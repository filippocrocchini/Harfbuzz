#import, file "../module.jai"(FREETYPE_SUPPORT=true);
#import "freetype-2.12.1";
#import "Basic";

draw_glyph :: (glyphid: u32, x: s32, y: s32)
{
    print("%(%, %), ", glyphid, x, y);
}

main :: () 
{
    ft_library: FT_Library;
    face: FT_Face;
    
    FT_Init_FreeType(*ft_library);
    defer FT_Done_FreeType(ft_library);
    
    FT_New_Face(ft_library, "Karla-Regular.ttf", 0, *face);
    FT_Set_Char_Size(face, 0, 1000, 0, 0);
          
    text := "This is some text!";

    buf := hb_buffer_create();

    hb_buffer_add_utf8(buf, text.data, -1, 0, -1);
    
    // hb_buffer_set_direction(buf, .HB_DIRECTION_LTR);
    // hb_buffer_set_script(buf, .HB_SCRIPT_LATIN);
    // hb_buffer_set_language(buf, hb_language_from_string("en", -1));
    
    // If you don't know the direction, script, and language
    hb_buffer_guess_segment_properties(buf);

    font := hb_ft_font_create(face, null);
    
    hb_shape(font, buf, null, 0);
    
    glyph_count: u32;
    glyph_info := hb_buffer_get_glyph_infos(buf, *glyph_count);
    glyph_pos  := hb_buffer_get_glyph_positions(buf, *glyph_count);
    
    cursor_x: hb_position_t = 0;
    cursor_y: hb_position_t = 0;
    
    for 0..glyph_count-1
    {
        glyphid   := glyph_info[it].codepoint;
        x_offset  := glyph_pos[it].x_offset;
        y_offset  := glyph_pos[it].y_offset;
        x_advance := glyph_pos[it].x_advance;
        y_advance := glyph_pos[it].y_advance;
        
        draw_glyph(glyphid, cursor_x + x_offset, cursor_y + y_offset);

        cursor_x += x_advance;
        cursor_y += y_advance;
    }
    print("\n");
    
    hb_buffer_destroy(buf);
    hb_font_destroy(font);
    // hb_face_destroy(face);
}