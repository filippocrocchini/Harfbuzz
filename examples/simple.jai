#import, file "../module.jai";
#import "Basic";

draw_glyph :: (glyphid: u32, x: s32, y: s32)
{
    print("%(%, %), ", glyphid, x, y);
}

main :: () 
{
    text := "This is some text!";

    buf := hb_buffer_create();

    hb_buffer_add_utf8(buf, text.data, -1, 0, -1);
    
    // hb_buffer_set_direction(buf, .HB_DIRECTION_LTR);
    // hb_buffer_set_script(buf, .HB_SCRIPT_LATIN);
    // hb_buffer_set_language(buf, hb_language_from_string("en", -1));
    
    // If you don't know the direction, script, and language
    hb_buffer_guess_segment_properties(buf);
    
    blob := hb_blob_create_from_file("Karla-Regular.ttf");
    face := hb_face_create(blob, 0);
    font := hb_font_create(face);
    
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
    hb_face_destroy(face);
    hb_blob_destroy(blob);
}