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

hb_buffer_get_glyph_infos :: (buffer: *hb_buffer_t) -> []hb_glyph_info_t
{
    length: u32;
    data := hb_buffer_get_glyph_infos(buffer, *length);
    return .{length, data}; 
}

hb_buffer_get_glyph_positions :: (buffer: *hb_buffer_t) -> []hb_glyph_position_t
{
    length: u32;
    data := hb_buffer_get_glyph_positions(buffer, *length);
    return .{length, data}; 
}