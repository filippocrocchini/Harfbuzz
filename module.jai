#module_parameters(FREETYPE_SUPPORT := false);

#if FREETYPE_SUPPORT
{
    #import "freetype-2.12.1";

    #if OS == .WINDOWS #load "windows_ft.jai";
    #if OS == .MACOS   #load "macos_ft.jai";
    #if OS == .LINUX   #load "linux_ft.jai";
}
else {
    #if OS == .WINDOWS #load "windows.jai";
    #if OS == .MACOS   #load "macos.jai";
    #if OS == .LINUX   #load "linux.jai";
}