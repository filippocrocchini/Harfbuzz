#if OS == .WINDOWS {
    PLATFORM_NAME :: "windows";
} else #if OS == .LINUX {
    PLATFORM_NAME :: "linux";
} else #if OS == .MACOS {
    PLATFORM_NAME :: "macos";
} else {
    compiler_report(tprint("Unsupported platform: %", OS));
}

// This is a collection of regression tests for the bindings generator

// Since compile-time debugging is still tricky, it can sometimes be useful to compile this script into a binary and run that instead of generating the bindings at compile-time.
// But then we won’t compile the full tests suite, so keep this checked in as "AT_COMPILE_TIME :: true"!
AT_COMPILE_TIME :: true;

#if AT_COMPILE_TIME {

    #run,stallable build();

    build :: () {
        set_build_options_dc(.{do_output=false});

        options := get_build_options();
        extra: [] string;
        #if OS == .MACOS {
            macos_version_arg := tprint("-mmacosx-version-min=%.%", options.minimum_macos_version.major, options.minimum_macos_version.minor);
            extra = .[macos_version_arg];
        }

        if !generate_bindings() {
            compiler_set_workspace_status(.FAILED);
            return;
        }
    }
}

generate_bindings :: () -> bool
{
    output_filename: string;
    lib_folder:      string;

    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            output_filename  = "windows.jai";
            lib_folder       = "./windows";
        } else #if OS == .LINUX {
            output_filename  = "linux.jai";
            lib_folder       = "./linux";
        } else #if OS == .MACOS {
            output_filename  = "macos.jai";
            lib_folder       = "./macos";
        } else {
            assert(false);
        }

       freetype_path := get_absolute_path(".build/freetype-2.12.1");
       freetype_library_path := join(compiler_get_base_path(), "/modules/freetype-2.12.1/", PLATFORM_NAME, "/");
        
        array_add(*libpaths, lib_folder);
        array_add(*libnames, "harfbuzz");
        // array_add(*libnames, "harfbuzz-subset");
        array_add(*source_files,  ".build/harfbuzz-8.3.1/src/hb.h");
        array_add(*system_include_paths, tprint("%/include/", freetype_path));
        array_add(*extra_clang_arguments,
            "-x",
            "c++",
            "-DWIN32_LEAN_AND_MEAN",
        );
        log_unsupported = true;
        generate_compile_time_struct_checks = true;
        strip_flags = 0;
        // strip_flags &= ~(Strip_Flags.CONSTRUCTORS | .DESTRUCTORS);
    }

    generate_bindings(opts, output_filename);

    #if OS == .WINDOWS {
        output_filename = "windows_ft.jai";
    } else #if OS == .LINUX {
        output_filename = "linux_ft.jai";
    } else #if OS == .MACOS {
        output_filename = "macos_ft.jai";
    } else {
        assert(false);
    }
    
    array_reset(*opts.libnames);
    array_add(*opts.libnames, "harfbuzz_freetype");
    
    array_add(*opts.source_files, ".build/harfbuzz-8.3.1/src/hb-ft.h");

    generate_bindings(opts, output_filename);
    
    return true;
}

#scope_file

#import "Basic";
#import "Compiler";
#import "BuildCpp";
#import "Check";
#import "Bindings_Generator";
#import "File";
#import "String";
