#if OS == .WINDOWS {
    PLATFORM_NAME :: "windows";
} else #if OS == .LINUX {
    PLATFORM_NAME :: "linux";
} else #if OS == .MACOS {
    PLATFORM_NAME :: "macos";
} else {
    compiler_report(tprint("Unsupported platform: %", OS));
}

COMPILE_DEBUG :: false;

#run {
    make_directory_if_it_does_not_exist(".build/");
    
    freetype_path := ".build/freetype-2.12.1";
    
    // Get freetype2 headers
    {
        freetype_zip_path   := ".build/freetype-2.12.1.zip";
    
        if !file_exists(freetype_path)
        {
            download("https://sourceforge.net/projects/freetype/files/freetype2/2.12.1/ft2121.zip/download", ".build/freetype-2.12.1.zip");
            run_command("tar", "-xf", "freetype-2.12.1.zip",  working_directory="./.build");
        }
    }
    
    /*
        freetype_build_path := ".build/freetype-2.12.1_build";
        build_success := build_cmake_project(
            freetype_path,
            freetype_build_path,
            compile_debug = COMPILE_DEBUG
        );
        
        if !build_success
        {
            exit(0);
        }
    }
    */

    make_directory_if_it_does_not_exist(PLATFORM_NAME);
    libname    := tprint("./%/harfbuzz", PLATFORM_NAME);
    libname_ft := tprint("./%/harfbuzz_freetype", PLATFORM_NAME);

    library_file := join(compiler_get_base_path(), "/modules/freetype-2.12.1/", PLATFORM_NAME, "/freetype.lib");

    harfbuzz_path := ".build/harfbuzz-8.3.1";
    
    {
        harfbuzz_build_path := ".build/harfbuzz-8.3.1_build";
        harfbuzz_zip_path   := ".build/harfbuzz-8.3.1.zip";
    
    	if !file_exists(harfbuzz_path)
        {
            download("https://github.com/harfbuzz/harfbuzz/archive/refs/tags/8.3.1.zip", harfbuzz_zip_path);
            run_command("tar", "-xf", "harfbuzz-8.3.1.zip", working_directory="./.build");
        }
        
    /*    
        build_success := build_cmake_project(
            harfbuzz_path,
            harfbuzz_build_path,
            "-DHB_HAVE_FREETYPE=ON",
            "-DHB_DLL_EXPORT=ON",
            tprint("-DFREETYPE_LIBRARY=%", library_file),
            tprint("-DFREETYPE_INCLUDE_DIRS=%/include/", get_absolute_path(freetype_path)),
            "-DCMAKE_CXX_FLAGS=/MTd /bigobj /DMESHOPTIMIZER_API=__declspec(dllexport)",
            compile_debug = COMPILE_DEBUG
        );
 
        if !build_success
        {
            exit(0);
        }
    */
    }

    set_build_options_dc(.{do_output = false});

    /*    
    */
    extra : [..]string;
    
    #if OS == .WINDOWS {
        array_add(*extra, "/DMESHOPTIMIZER_API=__declspec(dllexport)");
    }
        
    print("Building libraries:\n");
    src :=  join(harfbuzz_path, "/src/harfbuzz.cc");

    {
        print("Building harfbuzz:\n");

        build_cpp(libname, src, type=.OBJ_FILE, debug = false, extra = .["-DHB_DLL_EXPORT", "-DHB_EXPERIMENTAL_API"]);
        build_cpp_dynamic_lib(libname, src, debug = false, extra = .["-DHB_DLL_EXPORT", "-DHB_EXPERIMENTAL_API"]);
        build_cpp_static_lib(libname, src, debug = false, extra = .["-DHB_DLL_EXPORT", "-DHB_EXPERIMENTAL_API"]);
    }
    
    library_files := string.[library_file];

    {
        print("Building harfbuzz-freetype:\n");

        build_cpp(libname_ft, src, type=.OBJ_FILE, debug = false, extra = .["-DHB_DLL_EXPORT", "-DHAVE_FREETYPE", "-DHB_EXPERIMENTAL_API", tprint("/I%\\include", get_absolute_path(freetype_path))], library_files=library_files );
        build_cpp_dynamic_lib(libname_ft, src, debug = false, extra = .["-DHB_DLL_EXPORT", "-DHAVE_FREETYPE", "-DHB_EXPERIMENTAL_API", tprint("/I%\\include", get_absolute_path(freetype_path))], library_files=library_files);
        build_cpp_static_lib(libname_ft, src, debug = false, extra = .["-DHB_DLL_EXPORT", "-DHAVE_FREETYPE", "-DHB_EXPERIMENTAL_API", tprint("/I%\\include", get_absolute_path(freetype_path))], library_files=library_files);
    }
};

build_cmake_project :: (project_path: string, harfbuzz_build_path: string, config_options: ..string, compile_debug: bool = false) -> bool
{
	install_dir := PLATFORM_NAME;
    success := make_directory_if_it_does_not_exist(install_dir);
    if !success {
        log_error("Could not create directory \"%\"\n", install_dir);
		return false;
    }

	absolute_install_dir := get_absolute_path(install_dir);
	assert(absolute_install_dir != "");

    absolute_build_dir := get_absolute_path(harfbuzz_build_path);
    log("Configuring project... \"%\" -> \"%\"", absolute_build_dir, absolute_install_dir);
	if file_exists(absolute_build_dir) {
		success := delete_directory(absolute_build_dir);
		if !success {
			log_error("Could not delete old build directory");
			return false;
		}
	}
    success = make_directory_if_it_does_not_exist(absolute_build_dir);
    if !success {
        log_error("Could not create directory \"%\"\n", absolute_build_dir);
		return false;
    }

	absolute_project_path := get_absolute_path(project_path);
    config_command: [..] string;
    array_add(*config_command,
		"cmake",
		absolute_project_path,
        tprint("-DCMAKE_INSTALL_PREFIX=%", absolute_install_dir),
        tprint("-DCMAKE_PREFIX_PATH=%",    install_dir),
	);
	
	array_add(*config_command, ..config_options);

    if compile_debug {
        array_add(*config_command, "-DCMAKE_BUILD_TYPE=Debug");
    } else {
        array_add(*config_command, "-DCMAKE_BUILD_TYPE=Release");
    }

    #if OS == .MACOS {
        using options := get_build_options();
        array_add(*config_command,
            tprint("-DCMAKE_OSX_DEPLOYMENT_TARGET=%.%", minimum_os_version.major, minimum_os_version.minor),
        );
    }

    run_or_exit(..config_command, working_directory = absolute_build_dir);
    log("Done configuring project");

    log("Building project...");
    build_command: [..] string;
    array_add(*build_command, "cmake", "--build", absolute_build_dir, "--target", "install");

    run_or_exit(..build_command);
	log("Done building project");

	return true;
}

run_or_exit :: (command: .. string, working_directory := "") -> string {
    // Enable this to see the commands being executed.
    // Might be useful if, for example, you need to compile LLVM on a platform where we don’t have a Jai compiler yet and want to do it manually.
    log("Executing command \"%\" in directory \"%\"\n", join(..command, separator = " "), working_directory);

    result, output_string, error_string := run_command(..command, working_directory = working_directory, capture_and_return_output = true, print_captured_output = true);
    defer {
        free(error_string);
    }
    if result.exit_code != 0 {
        log_error("Could not run command \"%\" in directory \"%\". Exit code: %\nError:\n%", get_quoted_command_string(command), working_directory, result.exit_code, error_string);
        log_error("Output:\n%", output_string);
        exit(1);
    }
    return output_string;
}

#load "curl_download.jai";

#import "File";
#import "File_Utilities";
#import "Process";
#import "BuildCpp";
#import "Compiler";
#import "Basic";
#import "String";


