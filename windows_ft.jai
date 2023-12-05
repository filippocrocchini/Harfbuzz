//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



HB_CODEPOINT_INVALID :: cast,trunc(hb_codepoint_t) -1;

HB_LANGUAGE_INVALID :: cast(hb_language_t) 0;

HB_FEATURE_GLOBAL_START :: 0;

HB_UNICODE_MAX :: 0x10FFFF;

HB_SET_VALUE_INVALID :: HB_CODEPOINT_INVALID;

HB_MAP_VALUE_INVALID :: HB_CODEPOINT_INVALID;

HB_FONT_NO_VAR_NAMED_INSTANCE :: 0xFFFFFFFF;

HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT :: 0xFFFD;

HB_UNICODE_COMBINING_CLASS_CCC133 :: 133;

HB_UNICODE_MAX_DECOMPOSITION_LEN :: 18+1;

HB_VERSION_MAJOR :: 8;

HB_VERSION_MINOR :: 3;

HB_VERSION_MICRO :: 1;

HB_VERSION_STRING :: "8.3.1";

/**
* hb_bool_t:
*
* Data type for booleans.
*
**/
hb_bool_t :: s32;

/**
* hb_codepoint_t:
*
* Data type for holding Unicode codepoints. Also
* used to hold glyph IDs.
*
**/
hb_codepoint_t :: u32;

/**
* hb_position_t:
*
* Data type for holding a single coordinate value.
* Contour points and other multi-dimensional data are
* stored as tuples of #hb_position_t's.
*
**/
hb_position_t :: s32;

/**
* hb_mask_t:
*
* Data type for bitmasks.
*
**/
hb_mask_t :: u32;

_hb_var_int_t :: union {
    _u32: u32;
    i32:  s32;
    _u16: [2] u16;
    i16:  [2] s16;
    _u8:  [4] u8;
    i8:   [4] s8;
}

hb_var_int_t :: _hb_var_int_t;

_hb_var_num_t :: union {
    f:    float;
    _u32: u32;
    i32:  s32;
    _u16: [2] u16;
    i16:  [2] s16;
    _u8:  [4] u8;
    i8:   [4] s8;
}

hb_var_num_t :: _hb_var_num_t;

/**
* hb_tag_t:
*
* Data type for tag identifiers. Tags are four
* byte integers, each byte representing a character.
*
* Tags are used to identify tables, design-variation axes,
* scripts, languages, font features, and baselines with
* human-readable names.
*
**/
hb_tag_t :: u32;

/* len=-1 means str is NUL-terminated. */
hb_tag_from_string :: (str: *u8, len: s32) -> hb_tag_t #foreign harfbuzz_freetype;

/* buf should have 4 bytes. */
hb_tag_to_string :: (tag: hb_tag_t, buf: *u8) -> void #foreign harfbuzz_freetype;

/**
* hb_direction_t:
* @HB_DIRECTION_INVALID: Initial, unset direction.
* @HB_DIRECTION_LTR: Text is set horizontally from left to right.
* @HB_DIRECTION_RTL: Text is set horizontally from right to left.
* @HB_DIRECTION_TTB: Text is set vertically from top to bottom.
* @HB_DIRECTION_BTT: Text is set vertically from bottom to top.
*
* The direction of a text segment or buffer.
*
* A segment can also be tested for horizontal or vertical
* orientation (irrespective of specific direction) with
* HB_DIRECTION_IS_HORIZONTAL() or HB_DIRECTION_IS_VERTICAL().
*
*/
hb_direction_t :: enum s32 {
    INVALID :: 0;
    LTR     :: 4;
    RTL     :: 5;
    TTB     :: 6;
    BTT     :: 7;

    HB_DIRECTION_INVALID :: INVALID;
    HB_DIRECTION_LTR     :: LTR;
    HB_DIRECTION_RTL     :: RTL;
    HB_DIRECTION_TTB     :: TTB;
    HB_DIRECTION_BTT     :: BTT;
}

/* len=-1 means str is NUL-terminated */
hb_direction_from_string :: (str: *u8, len: s32) -> hb_direction_t #foreign harfbuzz_freetype;

hb_direction_to_string :: (direction: hb_direction_t) -> *u8 #foreign harfbuzz_freetype;

hb_language_impl_t :: struct {}
/**
* hb_language_t:
*
* Data type for languages. Each #hb_language_t corresponds to a BCP 47
* language tag.
*
*/
hb_language_t :: *hb_language_impl_t;

hb_language_from_string :: (str: *u8, len: s32) -> hb_language_t #foreign harfbuzz_freetype;

hb_language_to_string :: (language: hb_language_t) -> *u8 #foreign harfbuzz_freetype;

hb_language_get_default :: () -> hb_language_t #foreign harfbuzz_freetype;

hb_language_matches :: (language: hb_language_t, specific: hb_language_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* https://docs.google.com/spreadsheets/d/1Y90M0Ie3MUJ6UVCRDOypOtijlMDLNNyyLk36T6iMu0o */
hb_script_t :: enum s32 {
    HB_SCRIPT_COMMON                 :: 1517910393;
    HB_SCRIPT_INHERITED              :: 1516858984;
    HB_SCRIPT_UNKNOWN                :: 1517976186;

    HB_SCRIPT_ARABIC                 :: 1098015074;
    HB_SCRIPT_ARMENIAN               :: 1098018158;
    HB_SCRIPT_BENGALI                :: 1113943655;
    HB_SCRIPT_CYRILLIC               :: 1132032620;
    HB_SCRIPT_DEVANAGARI             :: 1147500129;
    HB_SCRIPT_GEORGIAN               :: 1197830002;
    HB_SCRIPT_GREEK                  :: 1198679403;
    HB_SCRIPT_GUJARATI               :: 1198877298;
    HB_SCRIPT_GURMUKHI               :: 1198879349;
    HB_SCRIPT_HANGUL                 :: 1214344807;
    HB_SCRIPT_HAN                    :: 1214344809;
    HB_SCRIPT_HEBREW                 :: 1214603890;
    HB_SCRIPT_HIRAGANA               :: 1214870113;
    HB_SCRIPT_KANNADA                :: 1265525857;
    HB_SCRIPT_KATAKANA               :: 1264676449;
    HB_SCRIPT_LAO                    :: 1281453935;
    HB_SCRIPT_LATIN                  :: 1281455214;
    HB_SCRIPT_MALAYALAM              :: 1298954605;
    HB_SCRIPT_ORIYA                  :: 1332902241;
    HB_SCRIPT_TAMIL                  :: 1415671148;
    HB_SCRIPT_TELUGU                 :: 1415933045;
    HB_SCRIPT_THAI                   :: 1416126825;

    HB_SCRIPT_TIBETAN                :: 1416192628;

    HB_SCRIPT_BOPOMOFO               :: 1114599535;
    HB_SCRIPT_BRAILLE                :: 1114792297;
    HB_SCRIPT_CANADIAN_SYLLABICS     :: 1130458739;
    HB_SCRIPT_CHEROKEE               :: 1130915186;
    HB_SCRIPT_ETHIOPIC               :: 1165256809;
    HB_SCRIPT_KHMER                  :: 1265134962;
    HB_SCRIPT_MONGOLIAN              :: 1299148391;
    HB_SCRIPT_MYANMAR                :: 1299803506;
    HB_SCRIPT_OGHAM                  :: 1332175213;
    HB_SCRIPT_RUNIC                  :: 1383427698;
    HB_SCRIPT_SINHALA                :: 1399418472;
    HB_SCRIPT_SYRIAC                 :: 1400468067;
    HB_SCRIPT_THAANA                 :: 1416126817;
    HB_SCRIPT_YI                     :: 1500080489;

    HB_SCRIPT_DESERET                :: 1148416628;
    HB_SCRIPT_GOTHIC                 :: 1198486632;
    HB_SCRIPT_OLD_ITALIC             :: 1232363884;

    HB_SCRIPT_BUHID                  :: 1114990692;
    HB_SCRIPT_HANUNOO                :: 1214344815;
    HB_SCRIPT_TAGALOG                :: 1416064103;
    HB_SCRIPT_TAGBANWA               :: 1415669602;

    HB_SCRIPT_CYPRIOT                :: 1131442804;
    HB_SCRIPT_LIMBU                  :: 1281977698;
    HB_SCRIPT_LINEAR_B               :: 1281977954;
    HB_SCRIPT_OSMANYA                :: 1332964705;
    HB_SCRIPT_SHAVIAN                :: 1399349623;
    HB_SCRIPT_TAI_LE                 :: 1415670885;
    HB_SCRIPT_UGARITIC               :: 1432838514;

    HB_SCRIPT_BUGINESE               :: 1114990441;
    HB_SCRIPT_COPTIC                 :: 1131376756;
    HB_SCRIPT_GLAGOLITIC             :: 1198285159;
    HB_SCRIPT_KHAROSHTHI             :: 1265131890;
    HB_SCRIPT_NEW_TAI_LUE            :: 1415670901;
    HB_SCRIPT_OLD_PERSIAN            :: 1483761007;
    HB_SCRIPT_SYLOTI_NAGRI           :: 1400466543;
    HB_SCRIPT_TIFINAGH               :: 1415999079;

    HB_SCRIPT_BALINESE               :: 1113681001;
    HB_SCRIPT_CUNEIFORM              :: 1483961720;
    HB_SCRIPT_NKO                    :: 1315663727;
    HB_SCRIPT_PHAGS_PA               :: 1349017959;
    HB_SCRIPT_PHOENICIAN             :: 1349021304;

    HB_SCRIPT_CARIAN                 :: 1130459753;
    HB_SCRIPT_CHAM                   :: 1130914157;
    HB_SCRIPT_KAYAH_LI               :: 1264675945;
    HB_SCRIPT_LEPCHA                 :: 1281716323;
    HB_SCRIPT_LYCIAN                 :: 1283023721;
    HB_SCRIPT_LYDIAN                 :: 1283023977;
    HB_SCRIPT_OL_CHIKI               :: 1332503403;
    HB_SCRIPT_REJANG                 :: 1382706791;
    HB_SCRIPT_SAURASHTRA             :: 1398895986;
    HB_SCRIPT_SUNDANESE              :: 1400204900;
    HB_SCRIPT_VAI                    :: 1449224553;

    HB_SCRIPT_AVESTAN                :: 1098281844;
    HB_SCRIPT_BAMUM                  :: 1113681269;
    HB_SCRIPT_EGYPTIAN_HIEROGLYPHS   :: 1164409200;
    HB_SCRIPT_IMPERIAL_ARAMAIC       :: 1098018153;
    HB_SCRIPT_INSCRIPTIONAL_PAHLAVI  :: 1349020777;
    HB_SCRIPT_INSCRIPTIONAL_PARTHIAN :: 1349678185;
    HB_SCRIPT_JAVANESE               :: 1247901281;
    HB_SCRIPT_KAITHI                 :: 1265920105;
    HB_SCRIPT_LISU                   :: 1281979253;
    HB_SCRIPT_MEETEI_MAYEK           :: 1299473769;
    HB_SCRIPT_OLD_SOUTH_ARABIAN      :: 1398895202;
    HB_SCRIPT_OLD_TURKIC             :: 1332898664;
    HB_SCRIPT_SAMARITAN              :: 1398893938;
    HB_SCRIPT_TAI_THAM               :: 1281453665;
    HB_SCRIPT_TAI_VIET               :: 1415673460;

    HB_SCRIPT_BATAK                  :: 1113683051;
    HB_SCRIPT_BRAHMI                 :: 1114792296;
    HB_SCRIPT_MANDAIC                :: 1298230884;

    HB_SCRIPT_CHAKMA                 :: 1130457965;
    HB_SCRIPT_MEROITIC_CURSIVE       :: 1298494051;
    HB_SCRIPT_MEROITIC_HIEROGLYPHS   :: 1298494063;
    HB_SCRIPT_MIAO                   :: 1349284452;
    HB_SCRIPT_SHARADA                :: 1399353956;
    HB_SCRIPT_SORA_SOMPENG           :: 1399812705;
    HB_SCRIPT_TAKRI                  :: 1415670642;

    HB_SCRIPT_BASSA_VAH              :: 1113682803;
    HB_SCRIPT_CAUCASIAN_ALBANIAN     :: 1097295970;
    HB_SCRIPT_DUPLOYAN               :: 1148547180;
    HB_SCRIPT_ELBASAN                :: 1164730977;
    HB_SCRIPT_GRANTHA                :: 1198678382;
    HB_SCRIPT_KHOJKI                 :: 1265135466;
    HB_SCRIPT_KHUDAWADI              :: 1399418468;
    HB_SCRIPT_LINEAR_A               :: 1281977953;
    HB_SCRIPT_MAHAJANI               :: 1298229354;
    HB_SCRIPT_MANICHAEAN             :: 1298230889;
    HB_SCRIPT_MENDE_KIKAKUI          :: 1298493028;
    HB_SCRIPT_MODI                   :: 1299145833;
    HB_SCRIPT_MRO                    :: 1299345263;
    HB_SCRIPT_NABATAEAN              :: 1315070324;
    HB_SCRIPT_OLD_NORTH_ARABIAN      :: 1315009122;
    HB_SCRIPT_OLD_PERMIC             :: 1348825709;
    HB_SCRIPT_PAHAWH_HMONG           :: 1215131239;
    HB_SCRIPT_PALMYRENE              :: 1348562029;
    HB_SCRIPT_PAU_CIN_HAU            :: 1348564323;
    HB_SCRIPT_PSALTER_PAHLAVI        :: 1349020784;
    HB_SCRIPT_SIDDHAM                :: 1399415908;
    HB_SCRIPT_TIRHUTA                :: 1416196712;
    HB_SCRIPT_WARANG_CITI            :: 1466004065;

    HB_SCRIPT_AHOM                   :: 1097363309;
    HB_SCRIPT_ANATOLIAN_HIEROGLYPHS  :: 1215067511;
    HB_SCRIPT_HATRAN                 :: 1214346354;
    HB_SCRIPT_MULTANI                :: 1299541108;
    HB_SCRIPT_OLD_HUNGARIAN          :: 1215655527;
    HB_SCRIPT_SIGNWRITING            :: 1399287415;

    HB_SCRIPT_ADLAM                  :: 1097100397;
    HB_SCRIPT_BHAIKSUKI              :: 1114139507;
    HB_SCRIPT_MARCHEN                :: 1298231907;
    HB_SCRIPT_OSAGE                  :: 1332963173;
    HB_SCRIPT_TANGUT                 :: 1415671399;
    HB_SCRIPT_NEWA                   :: 1315272545;

    HB_SCRIPT_MASARAM_GONDI          :: 1198485101;
    HB_SCRIPT_NUSHU                  :: 1316186229;
    HB_SCRIPT_SOYOMBO                :: 1399814511;
    HB_SCRIPT_ZANABAZAR_SQUARE       :: 1516334690;

    HB_SCRIPT_DOGRA                  :: 1148151666;
    HB_SCRIPT_GUNJALA_GONDI          :: 1198485095;
    HB_SCRIPT_HANIFI_ROHINGYA        :: 1383032935;
    HB_SCRIPT_MAKASAR                :: 1298230113;
    HB_SCRIPT_MEDEFAIDRIN            :: 1298490470;
    HB_SCRIPT_OLD_SOGDIAN            :: 1399809903;
    HB_SCRIPT_SOGDIAN                :: 1399809892;

    HB_SCRIPT_ELYMAIC                :: 1164736877;
    HB_SCRIPT_NANDINAGARI            :: 1315008100;
    HB_SCRIPT_NYIAKENG_PUACHUE_HMONG :: 1215131248;
    HB_SCRIPT_WANCHO                 :: 1466132591;

    HB_SCRIPT_CHORASMIAN             :: 1130918515;
    HB_SCRIPT_DIVES_AKURU            :: 1147756907;
    HB_SCRIPT_KHITAN_SMALL_SCRIPT    :: 1265202291;
    HB_SCRIPT_YEZIDI                 :: 1499822697;

    HB_SCRIPT_CYPRO_MINOAN           :: 1131441518;
    HB_SCRIPT_OLD_UYGHUR             :: 1333094258;
    HB_SCRIPT_TANGSA                 :: 1416524641;
    HB_SCRIPT_TOTO                   :: 1416590447;
    HB_SCRIPT_VITHKUQI               :: 1449751656;

    HB_SCRIPT_MATH                   :: 1517122664;

    HB_SCRIPT_KAWI                   :: 1264678761;
    HB_SCRIPT_NAG_MUNDARI            :: 1315006317;

    HB_SCRIPT_INVALID                :: 0;

    HB_SCRIPT_MAX_VALUE              :: 2147483647;
    HB_SCRIPT_MAX_VALUE_SIGNED       :: 2147483647;

    _HB_SCRIPT_MAX_VALUE        :: HB_SCRIPT_MAX_VALUE;
    _HB_SCRIPT_MAX_VALUE_SIGNED :: HB_SCRIPT_MAX_VALUE_SIGNED;
}

/* Script functions */
hb_script_from_iso15924_tag :: (tag: hb_tag_t) -> hb_script_t #foreign harfbuzz_freetype;

hb_script_from_string :: (str: *u8, len: s32) -> hb_script_t #foreign harfbuzz_freetype;

hb_script_to_iso15924_tag :: (script: hb_script_t) -> hb_tag_t #foreign harfbuzz_freetype;

hb_script_get_horizontal_direction :: (script: hb_script_t) -> hb_direction_t #foreign harfbuzz_freetype;

/**
* hb_user_data_key_t:
*
* Data structure for holding user-data keys.
*
**/
hb_user_data_key_t :: struct {
    /*< private >*/
    unused: u8;
}

/**
* hb_destroy_func_t:
* @user_data: the data to be destroyed
*
* A virtual method for destroy user-data callbacks.
*
*/
hb_destroy_func_t :: #type (user_data: *void) -> void #c_call;

/**
* hb_feature_t:
* @tag: The #hb_tag_t tag of the feature
* @value: The value of the feature. 0 disables the feature, non-zero (usually
* 1) enables the feature.  For features implemented as lookup type 3 (like
* 'salt') the @value is a one based index into the alternates.
* @start: the cluster to start applying this feature setting (inclusive).
* @end: the cluster to end applying this feature setting (exclusive).
*
* The #hb_feature_t is the structure that holds information about requested
* feature application. The feature will be applied with the given value to all
* glyphs which are in clusters between @start (inclusive) and @end (exclusive).
* Setting start to #HB_FEATURE_GLOBAL_START and end to #HB_FEATURE_GLOBAL_END
* specifies that the feature always applies to the entire buffer.
*/
hb_feature_t :: struct {
    tag:   hb_tag_t;
    value: u32;
    start: u32;
    end:   u32;
}

hb_feature_from_string :: (str: *u8, len: s32, feature: *hb_feature_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_feature_to_string :: (feature: *hb_feature_t, buf: *u8, size: u32) -> void #foreign harfbuzz_freetype;

/**
* hb_variation_t:
* @tag: The #hb_tag_t tag of the variation-axis name
* @value: The value of the variation axis
*
* Data type for holding variation data. Registered OpenType
* variation-axis tags are listed in
* [OpenType Axis Tag Registry](https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg).
*
* Since: 1.4.2
*/
hb_variation_t :: struct {
    tag:   hb_tag_t;
    value: float;
}

hb_variation_from_string :: (str: *u8, len: s32, variation: *hb_variation_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_variation_to_string :: (variation: *hb_variation_t, buf: *u8, size: u32) -> void #foreign harfbuzz_freetype;

/**
* hb_color_t:
*
* Data type for holding color values. Colors are eight bits per
* channel RGB plus alpha transparency.
*
* Since: 2.1.0
*/
hb_color_t :: u32;

hb_color_get_alpha :: (color: hb_color_t) -> u8 #foreign harfbuzz_freetype;

hb_color_get_red :: (color: hb_color_t) -> u8 #foreign harfbuzz_freetype;

hb_color_get_green :: (color: hb_color_t) -> u8 #foreign harfbuzz_freetype;

hb_color_get_blue :: (color: hb_color_t) -> u8 #foreign harfbuzz_freetype;

/**
* hb_glyph_extents_t:
* @x_bearing: Distance from the x-origin to the left extremum of the glyph.
* @y_bearing: Distance from the top extremum of the glyph to the y-origin.
* @width: Distance from the left extremum of the glyph to the right extremum.
* @height: Distance from the top extremum of the glyph to the bottom extremum.
*
* Glyph extent values, measured in font units.
*
* Note that @height is negative, in coordinate systems that grow up.
**/
hb_glyph_extents_t :: struct {
    x_bearing: hb_position_t;
    y_bearing: hb_position_t;
    width:     hb_position_t;
    height:    hb_position_t;
}

hb_font_t :: struct {}

/**
* hb_memory_mode_t:
* @HB_MEMORY_MODE_DUPLICATE: HarfBuzz immediately makes a copy of the data.
* @HB_MEMORY_MODE_READONLY: HarfBuzz client will never modify the data,
*     and HarfBuzz will never modify the data.
* @HB_MEMORY_MODE_WRITABLE: HarfBuzz client made a copy of the data solely
*     for HarfBuzz, so HarfBuzz may modify the data.
* @HB_MEMORY_MODE_READONLY_MAY_MAKE_WRITABLE: See above
*
* Data type holding the memory modes available to
* client programs.
*
* Regarding these various memory-modes:
*
* - In no case shall the HarfBuzz client modify memory
*   that is passed to HarfBuzz in a blob.  If there is
*   any such possibility, @HB_MEMORY_MODE_DUPLICATE should be used
*   such that HarfBuzz makes a copy immediately,
*
* - Use @HB_MEMORY_MODE_READONLY otherwise, unless you really really
*   really know what you are doing,
*
* - @HB_MEMORY_MODE_WRITABLE is appropriate if you really made a
*   copy of data solely for the purpose of passing to
*   HarfBuzz and doing that just once (no reuse!),
*
* - If the font is mmap()ed, it's okay to use
*   @HB_MEMORY_MODE_READONLY_MAY_MAKE_WRITABLE, however, using that mode
*   correctly is very tricky.  Use @HB_MEMORY_MODE_READONLY instead.
**/
hb_memory_mode_t :: enum s32 {
    DUPLICATE                  :: 0;
    READONLY                   :: 1;
    WRITABLE                   :: 2;
    READONLY_MAY_MAKE_WRITABLE :: 3;

    HB_MEMORY_MODE_DUPLICATE                  :: DUPLICATE;
    HB_MEMORY_MODE_READONLY                   :: READONLY;
    HB_MEMORY_MODE_WRITABLE                   :: WRITABLE;
    HB_MEMORY_MODE_READONLY_MAY_MAKE_WRITABLE :: READONLY_MAY_MAKE_WRITABLE;
}

hb_blob_t :: struct {}

hb_blob_create :: (data: *u8, length: u32, mode: hb_memory_mode_t, user_data: *void, destroy: hb_destroy_func_t) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_blob_create_or_fail :: (data: *u8, length: u32, mode: hb_memory_mode_t, user_data: *void, destroy: hb_destroy_func_t) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_blob_create_from_file :: (file_name: *u8) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_blob_create_from_file_or_fail :: (file_name: *u8) -> *hb_blob_t #foreign harfbuzz_freetype;

/* Always creates with MEMORY_MODE_READONLY.
* Even if the parent blob is writable, we don't
* want the user of the sub-blob to be able to
* modify the parent data as that data may be
* shared among multiple sub-blobs.
*/
hb_blob_create_sub_blob :: (parent: *hb_blob_t, offset: u32, length: u32) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_blob_copy_writable_or_fail :: (blob: *hb_blob_t) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_blob_get_empty :: () -> *hb_blob_t #foreign harfbuzz_freetype;

hb_blob_reference :: (blob: *hb_blob_t) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_blob_destroy :: (blob: *hb_blob_t) -> void #foreign harfbuzz_freetype;

hb_blob_set_user_data :: (blob: *hb_blob_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_blob_get_user_data :: (blob: *hb_blob_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_blob_make_immutable :: (blob: *hb_blob_t) -> void #foreign harfbuzz_freetype;

hb_blob_is_immutable :: (blob: *hb_blob_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_blob_get_length :: (blob: *hb_blob_t) -> u32 #foreign harfbuzz_freetype;

hb_blob_get_data :: (blob: *hb_blob_t, length: *u32) -> *u8 #foreign harfbuzz_freetype;

hb_blob_get_data_writable :: (blob: *hb_blob_t, length: *u32) -> *u8 #foreign harfbuzz_freetype;

/* Unicode Character Database property: General_Category (gc) */
hb_unicode_general_category_t :: enum s32 {
    CONTROL             :: 0;
    FORMAT              :: 1;
    UNASSIGNED          :: 2;
    PRIVATE_USE         :: 3;
    SURROGATE           :: 4;
    LOWERCASE_LETTER    :: 5;
    MODIFIER_LETTER     :: 6;
    OTHER_LETTER        :: 7;
    TITLECASE_LETTER    :: 8;
    UPPERCASE_LETTER    :: 9;
    SPACING_MARK        :: 10;
    ENCLOSING_MARK      :: 11;
    NON_SPACING_MARK    :: 12;
    DECIMAL_NUMBER      :: 13;
    LETTER_NUMBER       :: 14;
    OTHER_NUMBER        :: 15;
    CONNECT_PUNCTUATION :: 16;
    DASH_PUNCTUATION    :: 17;
    CLOSE_PUNCTUATION   :: 18;
    FINAL_PUNCTUATION   :: 19;
    INITIAL_PUNCTUATION :: 20;
    OTHER_PUNCTUATION   :: 21;
    OPEN_PUNCTUATION    :: 22;
    CURRENCY_SYMBOL     :: 23;
    MODIFIER_SYMBOL     :: 24;
    MATH_SYMBOL         :: 25;
    OTHER_SYMBOL        :: 26;
    LINE_SEPARATOR      :: 27;
    PARAGRAPH_SEPARATOR :: 28;
    SPACE_SEPARATOR     :: 29;

    HB_UNICODE_GENERAL_CATEGORY_CONTROL             :: CONTROL;
    HB_UNICODE_GENERAL_CATEGORY_FORMAT              :: FORMAT;
    HB_UNICODE_GENERAL_CATEGORY_UNASSIGNED          :: UNASSIGNED;
    HB_UNICODE_GENERAL_CATEGORY_PRIVATE_USE         :: PRIVATE_USE;
    HB_UNICODE_GENERAL_CATEGORY_SURROGATE           :: SURROGATE;
    HB_UNICODE_GENERAL_CATEGORY_LOWERCASE_LETTER    :: LOWERCASE_LETTER;
    HB_UNICODE_GENERAL_CATEGORY_MODIFIER_LETTER     :: MODIFIER_LETTER;
    HB_UNICODE_GENERAL_CATEGORY_OTHER_LETTER        :: OTHER_LETTER;
    HB_UNICODE_GENERAL_CATEGORY_TITLECASE_LETTER    :: TITLECASE_LETTER;
    HB_UNICODE_GENERAL_CATEGORY_UPPERCASE_LETTER    :: UPPERCASE_LETTER;
    HB_UNICODE_GENERAL_CATEGORY_SPACING_MARK        :: SPACING_MARK;
    HB_UNICODE_GENERAL_CATEGORY_ENCLOSING_MARK      :: ENCLOSING_MARK;
    HB_UNICODE_GENERAL_CATEGORY_NON_SPACING_MARK    :: NON_SPACING_MARK;
    HB_UNICODE_GENERAL_CATEGORY_DECIMAL_NUMBER      :: DECIMAL_NUMBER;
    HB_UNICODE_GENERAL_CATEGORY_LETTER_NUMBER       :: LETTER_NUMBER;
    HB_UNICODE_GENERAL_CATEGORY_OTHER_NUMBER        :: OTHER_NUMBER;
    HB_UNICODE_GENERAL_CATEGORY_CONNECT_PUNCTUATION :: CONNECT_PUNCTUATION;
    HB_UNICODE_GENERAL_CATEGORY_DASH_PUNCTUATION    :: DASH_PUNCTUATION;
    HB_UNICODE_GENERAL_CATEGORY_CLOSE_PUNCTUATION   :: CLOSE_PUNCTUATION;
    HB_UNICODE_GENERAL_CATEGORY_FINAL_PUNCTUATION   :: FINAL_PUNCTUATION;
    HB_UNICODE_GENERAL_CATEGORY_INITIAL_PUNCTUATION :: INITIAL_PUNCTUATION;
    HB_UNICODE_GENERAL_CATEGORY_OTHER_PUNCTUATION   :: OTHER_PUNCTUATION;
    HB_UNICODE_GENERAL_CATEGORY_OPEN_PUNCTUATION    :: OPEN_PUNCTUATION;
    HB_UNICODE_GENERAL_CATEGORY_CURRENCY_SYMBOL     :: CURRENCY_SYMBOL;
    HB_UNICODE_GENERAL_CATEGORY_MODIFIER_SYMBOL     :: MODIFIER_SYMBOL;
    HB_UNICODE_GENERAL_CATEGORY_MATH_SYMBOL         :: MATH_SYMBOL;
    HB_UNICODE_GENERAL_CATEGORY_OTHER_SYMBOL        :: OTHER_SYMBOL;
    HB_UNICODE_GENERAL_CATEGORY_LINE_SEPARATOR      :: LINE_SEPARATOR;
    HB_UNICODE_GENERAL_CATEGORY_PARAGRAPH_SEPARATOR :: PARAGRAPH_SEPARATOR;
    HB_UNICODE_GENERAL_CATEGORY_SPACE_SEPARATOR     :: SPACE_SEPARATOR;
}

/**
* hb_unicode_combining_class_t:
* @HB_UNICODE_COMBINING_CLASS_NOT_REORDERED: Spacing and enclosing marks; also many vowel and consonant signs, even if nonspacing
* @HB_UNICODE_COMBINING_CLASS_OVERLAY: Marks which overlay a base letter or symbol
* @HB_UNICODE_COMBINING_CLASS_NUKTA: Diacritic nukta marks in Brahmi-derived scripts
* @HB_UNICODE_COMBINING_CLASS_KANA_VOICING: Hiragana/Katakana voicing marks
* @HB_UNICODE_COMBINING_CLASS_VIRAMA: Viramas
* @HB_UNICODE_COMBINING_CLASS_CCC10: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC11: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC12: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC13: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC14: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC15: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC16: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC17: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC18: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC19: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC20: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC21: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC22: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC23: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC24: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC25: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC26: [Hebrew]
* @HB_UNICODE_COMBINING_CLASS_CCC27: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC28: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC29: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC30: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC31: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC32: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC33: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC34: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC35: [Arabic]
* @HB_UNICODE_COMBINING_CLASS_CCC36: [Syriac]
* @HB_UNICODE_COMBINING_CLASS_CCC84: [Telugu]
* @HB_UNICODE_COMBINING_CLASS_CCC91: [Telugu]
* @HB_UNICODE_COMBINING_CLASS_CCC103: [Thai]
* @HB_UNICODE_COMBINING_CLASS_CCC107: [Thai]
* @HB_UNICODE_COMBINING_CLASS_CCC118: [Lao]
* @HB_UNICODE_COMBINING_CLASS_CCC122: [Lao]
* @HB_UNICODE_COMBINING_CLASS_CCC129: [Tibetan]
* @HB_UNICODE_COMBINING_CLASS_CCC130: [Tibetan]
* @HB_UNICODE_COMBINING_CLASS_CCC132: [Tibetan] Since: 7.2.0
* @HB_UNICODE_COMBINING_CLASS_ATTACHED_BELOW_LEFT: Marks attached at the bottom left
* @HB_UNICODE_COMBINING_CLASS_ATTACHED_BELOW: Marks attached directly below
* @HB_UNICODE_COMBINING_CLASS_ATTACHED_ABOVE: Marks attached directly above
* @HB_UNICODE_COMBINING_CLASS_ATTACHED_ABOVE_RIGHT: Marks attached at the top right
* @HB_UNICODE_COMBINING_CLASS_BELOW_LEFT: Distinct marks at the bottom left
* @HB_UNICODE_COMBINING_CLASS_BELOW: Distinct marks directly below
* @HB_UNICODE_COMBINING_CLASS_BELOW_RIGHT: Distinct marks at the bottom right
* @HB_UNICODE_COMBINING_CLASS_LEFT: Distinct marks to the left
* @HB_UNICODE_COMBINING_CLASS_RIGHT: Distinct marks to the right
* @HB_UNICODE_COMBINING_CLASS_ABOVE_LEFT: Distinct marks at the top left
* @HB_UNICODE_COMBINING_CLASS_ABOVE: Distinct marks directly above
* @HB_UNICODE_COMBINING_CLASS_ABOVE_RIGHT: Distinct marks at the top right
* @HB_UNICODE_COMBINING_CLASS_DOUBLE_BELOW: Distinct marks subtending two bases
* @HB_UNICODE_COMBINING_CLASS_DOUBLE_ABOVE: Distinct marks extending above two bases
* @HB_UNICODE_COMBINING_CLASS_IOTA_SUBSCRIPT: Greek iota subscript only
* @HB_UNICODE_COMBINING_CLASS_INVALID: Invalid combining class
*
* Data type for the Canonical_Combining_Class (ccc) property
* from the Unicode Character Database.
*
* <note>Note: newer versions of Unicode may add new values.
* Client programs should be ready to handle any value in the 0..254 range
* being returned from hb_unicode_combining_class().</note>
*
**/
hb_unicode_combining_class_t :: enum s32 {
    NOT_REORDERED        :: 0;
    OVERLAY              :: 1;
    NUKTA                :: 7;
    KANA_VOICING         :: 8;
    VIRAMA               :: 9;

    CCC10                :: 10;
    CCC11                :: 11;
    CCC12                :: 12;
    CCC13                :: 13;
    CCC14                :: 14;
    CCC15                :: 15;
    CCC16                :: 16;
    CCC17                :: 17;
    CCC18                :: 18;
    CCC19                :: 19;
    CCC20                :: 20;
    CCC21                :: 21;
    CCC22                :: 22;
    CCC23                :: 23;
    CCC24                :: 24;
    CCC25                :: 25;
    CCC26                :: 26;

    CCC27                :: 27;
    CCC28                :: 28;
    CCC29                :: 29;
    CCC30                :: 30;
    CCC31                :: 31;
    CCC32                :: 32;
    CCC33                :: 33;
    CCC34                :: 34;
    CCC35                :: 35;

    CCC36                :: 36;

    CCC84                :: 84;
    CCC91                :: 91;

    CCC103               :: 103;
    CCC107               :: 107;

    CCC118               :: 118;
    CCC122               :: 122;

    CCC129               :: 129;
    CCC130               :: 130;
    CCC132               :: 132;

    ATTACHED_BELOW_LEFT  :: 200;
    ATTACHED_BELOW       :: 202;
    ATTACHED_ABOVE       :: 214;
    ATTACHED_ABOVE_RIGHT :: 216;
    BELOW_LEFT           :: 218;
    BELOW                :: 220;
    BELOW_RIGHT          :: 222;
    LEFT                 :: 224;
    RIGHT                :: 226;
    ABOVE_LEFT           :: 228;
    ABOVE                :: 230;
    ABOVE_RIGHT          :: 232;
    DOUBLE_BELOW         :: 233;
    DOUBLE_ABOVE         :: 234;

    IOTA_SUBSCRIPT       :: 240;

    INVALID              :: 255;

    HB_UNICODE_COMBINING_CLASS_NOT_REORDERED        :: NOT_REORDERED;
    HB_UNICODE_COMBINING_CLASS_OVERLAY              :: OVERLAY;
    HB_UNICODE_COMBINING_CLASS_NUKTA                :: NUKTA;
    HB_UNICODE_COMBINING_CLASS_KANA_VOICING         :: KANA_VOICING;
    HB_UNICODE_COMBINING_CLASS_VIRAMA               :: VIRAMA;

    HB_UNICODE_COMBINING_CLASS_CCC10                :: CCC10;
    HB_UNICODE_COMBINING_CLASS_CCC11                :: CCC11;
    HB_UNICODE_COMBINING_CLASS_CCC12                :: CCC12;
    HB_UNICODE_COMBINING_CLASS_CCC13                :: CCC13;
    HB_UNICODE_COMBINING_CLASS_CCC14                :: CCC14;
    HB_UNICODE_COMBINING_CLASS_CCC15                :: CCC15;
    HB_UNICODE_COMBINING_CLASS_CCC16                :: CCC16;
    HB_UNICODE_COMBINING_CLASS_CCC17                :: CCC17;
    HB_UNICODE_COMBINING_CLASS_CCC18                :: CCC18;
    HB_UNICODE_COMBINING_CLASS_CCC19                :: CCC19;
    HB_UNICODE_COMBINING_CLASS_CCC20                :: CCC20;
    HB_UNICODE_COMBINING_CLASS_CCC21                :: CCC21;
    HB_UNICODE_COMBINING_CLASS_CCC22                :: CCC22;
    HB_UNICODE_COMBINING_CLASS_CCC23                :: CCC23;
    HB_UNICODE_COMBINING_CLASS_CCC24                :: CCC24;
    HB_UNICODE_COMBINING_CLASS_CCC25                :: CCC25;
    HB_UNICODE_COMBINING_CLASS_CCC26                :: CCC26;

    HB_UNICODE_COMBINING_CLASS_CCC27                :: CCC27;
    HB_UNICODE_COMBINING_CLASS_CCC28                :: CCC28;
    HB_UNICODE_COMBINING_CLASS_CCC29                :: CCC29;
    HB_UNICODE_COMBINING_CLASS_CCC30                :: CCC30;
    HB_UNICODE_COMBINING_CLASS_CCC31                :: CCC31;
    HB_UNICODE_COMBINING_CLASS_CCC32                :: CCC32;
    HB_UNICODE_COMBINING_CLASS_CCC33                :: CCC33;
    HB_UNICODE_COMBINING_CLASS_CCC34                :: CCC34;
    HB_UNICODE_COMBINING_CLASS_CCC35                :: CCC35;

    HB_UNICODE_COMBINING_CLASS_CCC36                :: CCC36;

    HB_UNICODE_COMBINING_CLASS_CCC84                :: CCC84;
    HB_UNICODE_COMBINING_CLASS_CCC91                :: CCC91;

    HB_UNICODE_COMBINING_CLASS_CCC103               :: CCC103;
    HB_UNICODE_COMBINING_CLASS_CCC107               :: CCC107;

    HB_UNICODE_COMBINING_CLASS_CCC118               :: CCC118;
    HB_UNICODE_COMBINING_CLASS_CCC122               :: CCC122;

    HB_UNICODE_COMBINING_CLASS_CCC129               :: CCC129;
    HB_UNICODE_COMBINING_CLASS_CCC130               :: CCC130;
    HB_UNICODE_COMBINING_CLASS_CCC132               :: CCC132;

    HB_UNICODE_COMBINING_CLASS_ATTACHED_BELOW_LEFT  :: ATTACHED_BELOW_LEFT;
    HB_UNICODE_COMBINING_CLASS_ATTACHED_BELOW       :: ATTACHED_BELOW;
    HB_UNICODE_COMBINING_CLASS_ATTACHED_ABOVE       :: ATTACHED_ABOVE;
    HB_UNICODE_COMBINING_CLASS_ATTACHED_ABOVE_RIGHT :: ATTACHED_ABOVE_RIGHT;
    HB_UNICODE_COMBINING_CLASS_BELOW_LEFT           :: BELOW_LEFT;
    HB_UNICODE_COMBINING_CLASS_BELOW                :: BELOW;
    HB_UNICODE_COMBINING_CLASS_BELOW_RIGHT          :: BELOW_RIGHT;
    HB_UNICODE_COMBINING_CLASS_LEFT                 :: LEFT;
    HB_UNICODE_COMBINING_CLASS_RIGHT                :: RIGHT;
    HB_UNICODE_COMBINING_CLASS_ABOVE_LEFT           :: ABOVE_LEFT;
    HB_UNICODE_COMBINING_CLASS_ABOVE                :: ABOVE;
    HB_UNICODE_COMBINING_CLASS_ABOVE_RIGHT          :: ABOVE_RIGHT;
    HB_UNICODE_COMBINING_CLASS_DOUBLE_BELOW         :: DOUBLE_BELOW;
    HB_UNICODE_COMBINING_CLASS_DOUBLE_ABOVE         :: DOUBLE_ABOVE;

    HB_UNICODE_COMBINING_CLASS_IOTA_SUBSCRIPT       :: IOTA_SUBSCRIPT;

    HB_UNICODE_COMBINING_CLASS_INVALID              :: INVALID;
}

hb_unicode_funcs_t :: struct {}

/*
* just give me the best implementation you've got there.
*/
hb_unicode_funcs_get_default :: () -> *hb_unicode_funcs_t #foreign harfbuzz_freetype;

hb_unicode_funcs_create :: (parent: *hb_unicode_funcs_t) -> *hb_unicode_funcs_t #foreign harfbuzz_freetype;

hb_unicode_funcs_get_empty :: () -> *hb_unicode_funcs_t #foreign harfbuzz_freetype;

hb_unicode_funcs_reference :: (ufuncs: *hb_unicode_funcs_t) -> *hb_unicode_funcs_t #foreign harfbuzz_freetype;

hb_unicode_funcs_destroy :: (ufuncs: *hb_unicode_funcs_t) -> void #foreign harfbuzz_freetype;

hb_unicode_funcs_set_user_data :: (ufuncs: *hb_unicode_funcs_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_unicode_funcs_get_user_data :: (ufuncs: *hb_unicode_funcs_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_unicode_funcs_make_immutable :: (ufuncs: *hb_unicode_funcs_t) -> void #foreign harfbuzz_freetype;

hb_unicode_funcs_is_immutable :: (ufuncs: *hb_unicode_funcs_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_unicode_funcs_get_parent :: (ufuncs: *hb_unicode_funcs_t) -> *hb_unicode_funcs_t #foreign harfbuzz_freetype;

/**
* hb_unicode_combining_class_func_t:
* @ufuncs: A Unicode-functions structure
* @unicode: The code point to query
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_unicode_funcs_t structure.
*
* This method should retrieve the Canonical Combining Class (ccc)
* property for a specified Unicode code point.
*
* Return value: The #hb_unicode_combining_class_t of @unicode
*
**/
hb_unicode_combining_class_func_t :: #type (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t, user_data: *void) -> hb_unicode_combining_class_t #c_call;

/**
* hb_unicode_general_category_func_t:
* @ufuncs: A Unicode-functions structure
* @unicode: The code point to query
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_unicode_funcs_t structure.
*
* This method should retrieve the General Category property for
* a specified Unicode code point.
*
* Return value: The #hb_unicode_general_category_t of @unicode
*
**/
hb_unicode_general_category_func_t :: #type (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t, user_data: *void) -> hb_unicode_general_category_t #c_call;

/**
* hb_unicode_mirroring_func_t:
* @ufuncs: A Unicode-functions structure
* @unicode: The code point to query
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_unicode_funcs_t structure.
*
* This method should retrieve the Bi-Directional Mirroring Glyph
* code point for a specified Unicode code point.
*
* <note>Note: If a code point does not have a specified
* Bi-Directional Mirroring Glyph defined, the method should
* return the original code point.</note>
*
* Return value: The #hb_codepoint_t of the Mirroring Glyph for @unicode
*
**/
hb_unicode_mirroring_func_t :: #type (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t, user_data: *void) -> hb_codepoint_t #c_call;

/**
* hb_unicode_script_func_t:
* @ufuncs: A Unicode-functions structure
* @unicode: The code point to query
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_unicode_funcs_t structure.
*
* This method should retrieve the Script property for a
* specified Unicode code point.
*
* Return value: The #hb_script_t of @unicode
*
**/
hb_unicode_script_func_t :: #type (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t, user_data: *void) -> hb_script_t #c_call;

/**
* hb_unicode_compose_func_t:
* @ufuncs: A Unicode-functions structure
* @a: The first code point to compose
* @b: The second code point to compose
* @ab: (out): The composed code point
* @user_data: user data pointer passed by the caller
*
* A virtual method for the #hb_unicode_funcs_t structure.
*
* This method should compose a sequence of two input Unicode code
* points by canonical equivalence, returning the composed code
* point in a #hb_codepoint_t output parameter (if successful).
* The method must return an #hb_bool_t indicating the success
* of the composition.
*
* Return value: `true` is @a,@b composed, `false` otherwise
*
**/
hb_unicode_compose_func_t :: #type (ufuncs: *hb_unicode_funcs_t, a: hb_codepoint_t, b: hb_codepoint_t, ab: *hb_codepoint_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_unicode_decompose_func_t:
* @ufuncs: A Unicode-functions structure
* @ab: The code point to decompose
* @a: (out): The first decomposed code point
* @b: (out): The second decomposed code point
* @user_data: user data pointer passed by the caller
*
* A virtual method for the #hb_unicode_funcs_t structure.
*
* This method should decompose an input Unicode code point,
* returning the two decomposed code points in #hb_codepoint_t
* output parameters (if successful). The method must return an
* #hb_bool_t indicating the success of the composition.
*
* Return value: `true` if @ab decomposed, `false` otherwise
*
**/
hb_unicode_decompose_func_t :: #type (ufuncs: *hb_unicode_funcs_t, ab: hb_codepoint_t, a: *hb_codepoint_t, b: *hb_codepoint_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_unicode_funcs_set_combining_class_func:
* @ufuncs: A Unicode-functions structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_combining_class_func_t.
*
* Since: 0.9.2
**/
hb_unicode_funcs_set_combining_class_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_combining_class_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_funcs_set_general_category_func:
* @ufuncs: A Unicode-functions structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_general_category_func_t.
*
* Since: 0.9.2
**/
hb_unicode_funcs_set_general_category_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_general_category_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_funcs_set_mirroring_func:
* @ufuncs: A Unicode-functions structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_mirroring_func_t.
*
* Since: 0.9.2
**/
hb_unicode_funcs_set_mirroring_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_mirroring_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_funcs_set_script_func:
* @ufuncs: A Unicode-functions structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_script_func_t.
*
* Since: 0.9.2
**/
hb_unicode_funcs_set_script_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_script_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_funcs_set_compose_func:
* @ufuncs: A Unicode-functions structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_compose_func_t.
*
* Since: 0.9.2
**/
hb_unicode_funcs_set_compose_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_compose_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_funcs_set_decompose_func:
* @ufuncs: A Unicode-functions structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_decompose_func_t.
*
* Since: 0.9.2
**/
hb_unicode_funcs_set_decompose_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_decompose_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_combining_class:
* @ufuncs: The Unicode-functions structure
* @unicode: The code point to query
*
* Retrieves the Canonical Combining Class (ccc) property
* of code point @unicode.
*
* Return value: The #hb_unicode_combining_class_t of @unicode
*
* Since: 0.9.2
**/
hb_unicode_combining_class :: (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t) -> hb_unicode_combining_class_t #foreign harfbuzz_freetype;

/**
* hb_unicode_general_category:
* @ufuncs: The Unicode-functions structure
* @unicode: The code point to query
*
* Retrieves the General Category (gc) property
* of code point @unicode.
*
* Return value: The #hb_unicode_general_category_t of @unicode
*
* Since: 0.9.2
**/
hb_unicode_general_category :: (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t) -> hb_unicode_general_category_t #foreign harfbuzz_freetype;

/**
* hb_unicode_mirroring:
* @ufuncs: The Unicode-functions structure
* @unicode: The code point to query
*
* Retrieves the Bi-directional Mirroring Glyph code
* point defined for code point @unicode.
*
* Return value: The #hb_codepoint_t of the Mirroring Glyph for @unicode
*
* Since: 0.9.2
**/
hb_unicode_mirroring :: (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t) -> hb_codepoint_t #foreign harfbuzz_freetype;

/**
* hb_unicode_script:
* @ufuncs: The Unicode-functions structure
* @unicode: The code point to query
*
* Retrieves the #hb_script_t script to which code
* point @unicode belongs.
*
* Return value: The #hb_script_t of @unicode
*
* Since: 0.9.2
**/
hb_unicode_script :: (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t) -> hb_script_t #foreign harfbuzz_freetype;

hb_unicode_compose :: (ufuncs: *hb_unicode_funcs_t, a: hb_codepoint_t, b: hb_codepoint_t, ab: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_unicode_decompose :: (ufuncs: *hb_unicode_funcs_t, ab: hb_codepoint_t, a: *hb_codepoint_t, b: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_t :: struct {}

hb_set_create :: () -> *hb_set_t #foreign harfbuzz_freetype;

hb_set_get_empty :: () -> *hb_set_t #foreign harfbuzz_freetype;

hb_set_reference :: (set: *hb_set_t) -> *hb_set_t #foreign harfbuzz_freetype;

hb_set_destroy :: (set: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_set_user_data :: (set: *hb_set_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_get_user_data :: (set: *hb_set_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

/* Returns false if allocation has failed before */
hb_set_allocation_successful :: (set: *hb_set_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_copy :: (set: *hb_set_t) -> *hb_set_t #foreign harfbuzz_freetype;

hb_set_clear :: (set: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_is_empty :: (set: *hb_set_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_invert :: (set: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_is_inverted :: (set: *hb_set_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_has :: (set: *hb_set_t, codepoint: hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_add :: (set: *hb_set_t, codepoint: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_set_add_range :: (set: *hb_set_t, first: hb_codepoint_t, last: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_set_add_sorted_array :: (set: *hb_set_t, sorted_codepoints: *hb_codepoint_t, num_codepoints: u32) -> void #foreign harfbuzz_freetype;

hb_set_del :: (set: *hb_set_t, codepoint: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_set_del_range :: (set: *hb_set_t, first: hb_codepoint_t, last: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_set_is_equal :: (set: *hb_set_t, other: *hb_set_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_hash :: (set: *hb_set_t) -> u32 #foreign harfbuzz_freetype;

hb_set_is_subset :: (set: *hb_set_t, larger_set: *hb_set_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_set_set :: (set: *hb_set_t, other: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_union :: (set: *hb_set_t, other: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_intersect :: (set: *hb_set_t, other: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_subtract :: (set: *hb_set_t, other: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_symmetric_difference :: (set: *hb_set_t, other: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_set_get_population :: (set: *hb_set_t) -> u32 #foreign harfbuzz_freetype;

/* Returns HB_SET_VALUE_INVALID if set empty. */
hb_set_get_min :: (set: *hb_set_t) -> hb_codepoint_t #foreign harfbuzz_freetype;

/* Returns HB_SET_VALUE_INVALID if set empty. */
hb_set_get_max :: (set: *hb_set_t) -> hb_codepoint_t #foreign harfbuzz_freetype;

/* Pass HB_SET_VALUE_INVALID in to get started. */
hb_set_next :: (set: *hb_set_t, codepoint: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* Pass HB_SET_VALUE_INVALID in to get started. */
hb_set_previous :: (set: *hb_set_t, codepoint: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* Pass HB_SET_VALUE_INVALID for first and last to get started. */
hb_set_next_range :: (set: *hb_set_t, first: *hb_codepoint_t, last: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* Pass HB_SET_VALUE_INVALID for first and last to get started. */
hb_set_previous_range :: (set: *hb_set_t, first: *hb_codepoint_t, last: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* Pass HB_SET_VALUE_INVALID in to get started. */
hb_set_next_many :: (set: *hb_set_t, codepoint: hb_codepoint_t, out: *hb_codepoint_t, size: u32) -> u32 #foreign harfbuzz_freetype;

hb_map_t :: struct {}

hb_map_create :: () -> *hb_map_t #foreign harfbuzz_freetype;

hb_map_get_empty :: () -> *hb_map_t #foreign harfbuzz_freetype;

hb_map_reference :: (map: *hb_map_t) -> *hb_map_t #foreign harfbuzz_freetype;

hb_map_destroy :: (map: *hb_map_t) -> void #foreign harfbuzz_freetype;

hb_map_set_user_data :: (map: *hb_map_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_map_get_user_data :: (map: *hb_map_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

/* Returns false if allocation has failed before */
hb_map_allocation_successful :: (map: *hb_map_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_map_copy :: (map: *hb_map_t) -> *hb_map_t #foreign harfbuzz_freetype;

hb_map_clear :: (map: *hb_map_t) -> void #foreign harfbuzz_freetype;

hb_map_is_empty :: (map: *hb_map_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_map_get_population :: (map: *hb_map_t) -> u32 #foreign harfbuzz_freetype;

hb_map_is_equal :: (map: *hb_map_t, other: *hb_map_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_map_hash :: (map: *hb_map_t) -> u32 #foreign harfbuzz_freetype;

hb_map_set :: (map: *hb_map_t, key: hb_codepoint_t, value: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_map_get :: (map: *hb_map_t, key: hb_codepoint_t) -> hb_codepoint_t #foreign harfbuzz_freetype;

hb_map_del :: (map: *hb_map_t, key: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_map_has :: (map: *hb_map_t, key: hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_map_update :: (map: *hb_map_t, other: *hb_map_t) -> void #foreign harfbuzz_freetype;

/* Pass -1 in for idx to get started. */
hb_map_next :: (map: *hb_map_t, idx: *s32, key: *hb_codepoint_t, value: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_map_keys :: (map: *hb_map_t, keys: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_map_values :: (map: *hb_map_t, values: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_face_count :: (blob: *hb_blob_t) -> u32 #foreign harfbuzz_freetype;

hb_face_t :: struct {}

hb_face_create :: (blob: *hb_blob_t, index: u32) -> *hb_face_t #foreign harfbuzz_freetype;

/**
* hb_reference_table_func_t:
* @face: an #hb_face_t to reference table for
* @tag: the tag of the table to reference
* @user_data: User data pointer passed by the caller
*
* Callback function for hb_face_create_for_tables().
*
* Return value: (transfer full): A pointer to the @tag table within @face
*
* Since: 0.9.2
*/
hb_reference_table_func_t :: #type (face: *hb_face_t, tag: hb_tag_t, user_data: *void) -> *hb_blob_t #c_call;

/* calls destroy() when not needing user_data anymore */
hb_face_create_for_tables :: (reference_table_func: hb_reference_table_func_t, user_data: *void, destroy: hb_destroy_func_t) -> *hb_face_t #foreign harfbuzz_freetype;

hb_face_get_empty :: () -> *hb_face_t #foreign harfbuzz_freetype;

hb_face_reference :: (face: *hb_face_t) -> *hb_face_t #foreign harfbuzz_freetype;

hb_face_destroy :: (face: *hb_face_t) -> void #foreign harfbuzz_freetype;

hb_face_set_user_data :: (face: *hb_face_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_face_get_user_data :: (face: *hb_face_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_face_make_immutable :: (face: *hb_face_t) -> void #foreign harfbuzz_freetype;

hb_face_is_immutable :: (face: *hb_face_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_face_reference_table :: (face: *hb_face_t, tag: hb_tag_t) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_face_reference_blob :: (face: *hb_face_t) -> *hb_blob_t #foreign harfbuzz_freetype;

hb_face_set_index :: (face: *hb_face_t, index: u32) -> void #foreign harfbuzz_freetype;

hb_face_get_index :: (face: *hb_face_t) -> u32 #foreign harfbuzz_freetype;

hb_face_set_upem :: (face: *hb_face_t, upem: u32) -> void #foreign harfbuzz_freetype;

hb_face_get_upem :: (face: *hb_face_t) -> u32 #foreign harfbuzz_freetype;

hb_face_set_glyph_count :: (face: *hb_face_t, glyph_count: u32) -> void #foreign harfbuzz_freetype;

hb_face_get_glyph_count :: (face: *hb_face_t) -> u32 #foreign harfbuzz_freetype;

hb_face_get_table_tags :: (face: *hb_face_t, start_offset: u32, table_count: *u32, table_tags: *hb_tag_t) -> u32 #foreign harfbuzz_freetype;

/*
* Character set.
*/
hb_face_collect_unicodes :: (face: *hb_face_t, out: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_face_collect_nominal_glyph_mapping :: (face: *hb_face_t, mapping: *hb_map_t, unicodes: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_face_collect_variation_selectors :: (face: *hb_face_t, out: *hb_set_t) -> void #foreign harfbuzz_freetype;

hb_face_collect_variation_unicodes :: (face: *hb_face_t, variation_selector: hb_codepoint_t, out: *hb_set_t) -> void #foreign harfbuzz_freetype;

/*
* Builder face.
*/
hb_face_builder_create :: () -> *hb_face_t #foreign harfbuzz_freetype;

hb_face_builder_add_table :: (face: *hb_face_t, tag: hb_tag_t, blob: *hb_blob_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_face_builder_sort_tables :: (face: *hb_face_t, tags: *hb_tag_t) -> void #foreign harfbuzz_freetype;

/**
* hb_draw_state_t
* @path_open: Whether there is an open path
* @path_start_x: X component of the start of current path
* @path_start_y: Y component of the start of current path
* @current_x: X component of current point
* @current_y: Y component of current point
*
* Current drawing state.
*
* Since: 4.0.0
**/
hb_draw_state_t :: struct {
    path_open:    hb_bool_t;

    path_start_x: float;
    path_start_y: float;

    current_x:    float;
    current_y:    float;

    /*< private >*/
    reserved1:    hb_var_num_t;
    reserved2:    hb_var_num_t;
    reserved3:    hb_var_num_t;
    reserved4:    hb_var_num_t;
    reserved5:    hb_var_num_t;
    reserved6:    hb_var_num_t;
    reserved7:    hb_var_num_t;
}

hb_draw_funcs_t :: struct {}

/**
* hb_draw_move_to_func_t:
* @dfuncs: draw functions object
* @draw_data: The data accompanying the draw functions in hb_font_draw_glyph()
* @st: current draw state
* @to_x: X component of target point
* @to_y: Y component of target point
* @user_data: User data pointer passed to hb_draw_funcs_set_move_to_func()
*
* A virtual method for the #hb_draw_funcs_t to perform a "move-to" draw
* operation.
*
* Since: 4.0.0
*
**/
hb_draw_move_to_func_t :: #type (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, to_x: float, to_y: float, user_data: *void) -> void #c_call;

/**
* hb_draw_line_to_func_t:
* @dfuncs: draw functions object
* @draw_data: The data accompanying the draw functions in hb_font_draw_glyph()
* @st: current draw state
* @to_x: X component of target point
* @to_y: Y component of target point
* @user_data: User data pointer passed to hb_draw_funcs_set_line_to_func()
*
* A virtual method for the #hb_draw_funcs_t to perform a "line-to" draw
* operation.
*
* Since: 4.0.0
*
**/
hb_draw_line_to_func_t :: #type (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, to_x: float, to_y: float, user_data: *void) -> void #c_call;

/**
* hb_draw_quadratic_to_func_t:
* @dfuncs: draw functions object
* @draw_data: The data accompanying the draw functions in hb_font_draw_glyph()
* @st: current draw state
* @control_x: X component of control point
* @control_y: Y component of control point
* @to_x: X component of target point
* @to_y: Y component of target point
* @user_data: User data pointer passed to hb_draw_funcs_set_quadratic_to_func()
*
* A virtual method for the #hb_draw_funcs_t to perform a "quadratic-to" draw
* operation.
*
* Since: 4.0.0
*
**/
hb_draw_quadratic_to_func_t :: #type (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, control_x: float, control_y: float, to_x: float, to_y: float, user_data: *void) -> void #c_call;

/**
* hb_draw_cubic_to_func_t:
* @dfuncs: draw functions object
* @draw_data: The data accompanying the draw functions in hb_font_draw_glyph()
* @st: current draw state
* @control1_x: X component of first control point
* @control1_y: Y component of first control point
* @control2_x: X component of second control point
* @control2_y: Y component of second control point
* @to_x: X component of target point
* @to_y: Y component of target point
* @user_data: User data pointer passed to hb_draw_funcs_set_cubic_to_func()
*
* A virtual method for the #hb_draw_funcs_t to perform a "cubic-to" draw
* operation.
*
* Since: 4.0.0
*
**/
hb_draw_cubic_to_func_t :: #type (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, control1_x: float, control1_y: float, control2_x: float, control2_y: float, to_x: float, to_y: float, user_data: *void) -> void #c_call;

/**
* hb_draw_close_path_func_t:
* @dfuncs: draw functions object
* @draw_data: The data accompanying the draw functions in hb_font_draw_glyph()
* @st: current draw state
* @user_data: User data pointer passed to hb_draw_funcs_set_close_path_func()
*
* A virtual method for the #hb_draw_funcs_t to perform a "close-path" draw
* operation.
*
* Since: 4.0.0
*
**/
hb_draw_close_path_func_t :: #type (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, user_data: *void) -> void #c_call;

/**
* hb_draw_funcs_set_move_to_func:
* @dfuncs: draw functions object
* @func: (closure user_data) (destroy destroy) (scope notified): move-to callback
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets move-to callback to the draw functions object.
*
* Since: 4.0.0
**/
hb_draw_funcs_set_move_to_func :: (dfuncs: *hb_draw_funcs_t, func: hb_draw_move_to_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_draw_funcs_set_line_to_func:
* @dfuncs: draw functions object
* @func: (closure user_data) (destroy destroy) (scope notified): line-to callback
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets line-to callback to the draw functions object.
*
* Since: 4.0.0
**/
hb_draw_funcs_set_line_to_func :: (dfuncs: *hb_draw_funcs_t, func: hb_draw_line_to_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_draw_funcs_set_quadratic_to_func:
* @dfuncs: draw functions object
* @func: (closure user_data) (destroy destroy) (scope notified): quadratic-to callback
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets quadratic-to callback to the draw functions object.
*
* Since: 4.0.0
**/
hb_draw_funcs_set_quadratic_to_func :: (dfuncs: *hb_draw_funcs_t, func: hb_draw_quadratic_to_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_draw_funcs_set_cubic_to_func:
* @dfuncs: draw functions
* @func: (closure user_data) (destroy destroy) (scope notified): cubic-to callback
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets cubic-to callback to the draw functions object.
*
* Since: 4.0.0
**/
hb_draw_funcs_set_cubic_to_func :: (dfuncs: *hb_draw_funcs_t, func: hb_draw_cubic_to_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_draw_funcs_set_close_path_func:
* @dfuncs: draw functions object
* @func: (closure user_data) (destroy destroy) (scope notified): close-path callback
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets close-path callback to the draw functions object.
*
* Since: 4.0.0
**/
hb_draw_funcs_set_close_path_func :: (dfuncs: *hb_draw_funcs_t, func: hb_draw_close_path_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

hb_draw_funcs_create :: () -> *hb_draw_funcs_t #foreign harfbuzz_freetype;

hb_draw_funcs_get_empty :: () -> *hb_draw_funcs_t #foreign harfbuzz_freetype;

hb_draw_funcs_reference :: (dfuncs: *hb_draw_funcs_t) -> *hb_draw_funcs_t #foreign harfbuzz_freetype;

hb_draw_funcs_destroy :: (dfuncs: *hb_draw_funcs_t) -> void #foreign harfbuzz_freetype;

hb_draw_funcs_set_user_data :: (dfuncs: *hb_draw_funcs_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_draw_funcs_get_user_data :: (dfuncs: *hb_draw_funcs_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_draw_funcs_make_immutable :: (dfuncs: *hb_draw_funcs_t) -> void #foreign harfbuzz_freetype;

hb_draw_funcs_is_immutable :: (dfuncs: *hb_draw_funcs_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_draw_move_to :: (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, to_x: float, to_y: float) -> void #foreign harfbuzz_freetype;

hb_draw_line_to :: (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, to_x: float, to_y: float) -> void #foreign harfbuzz_freetype;

hb_draw_quadratic_to :: (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, control_x: float, control_y: float, to_x: float, to_y: float) -> void #foreign harfbuzz_freetype;

hb_draw_cubic_to :: (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t, control1_x: float, control1_y: float, control2_x: float, control2_y: float, to_x: float, to_y: float) -> void #foreign harfbuzz_freetype;

hb_draw_close_path :: (dfuncs: *hb_draw_funcs_t, draw_data: *void, st: *hb_draw_state_t) -> void #foreign harfbuzz_freetype;

hb_paint_funcs_t :: struct {}

hb_paint_funcs_create :: () -> *hb_paint_funcs_t #foreign harfbuzz_freetype;

hb_paint_funcs_get_empty :: () -> *hb_paint_funcs_t #foreign harfbuzz_freetype;

hb_paint_funcs_reference :: (funcs: *hb_paint_funcs_t) -> *hb_paint_funcs_t #foreign harfbuzz_freetype;

hb_paint_funcs_destroy :: (funcs: *hb_paint_funcs_t) -> void #foreign harfbuzz_freetype;

hb_paint_funcs_set_user_data :: (funcs: *hb_paint_funcs_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_paint_funcs_get_user_data :: (funcs: *hb_paint_funcs_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_paint_funcs_make_immutable :: (funcs: *hb_paint_funcs_t) -> void #foreign harfbuzz_freetype;

hb_paint_funcs_is_immutable :: (funcs: *hb_paint_funcs_t) -> hb_bool_t #foreign harfbuzz_freetype;

/**
* hb_paint_push_transform_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @xx: xx component of the transform matrix
* @yx: yx component of the transform matrix
* @xy: xy component of the transform matrix
* @yy: yy component of the transform matrix
* @dx: dx component of the transform matrix
* @dy: dy component of the transform matrix
* @user_data: User data pointer passed to hb_paint_funcs_set_push_transform_func()
*
* A virtual method for the #hb_paint_funcs_t to apply
* a transform to subsequent paint calls.
*
* This transform is applied after the current transform,
* and remains in effect until a matching call to
* the #hb_paint_funcs_pop_transform_func_t vfunc.
*
* Since: 7.0.0
*/
hb_paint_push_transform_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, _xx: float, yx: float, xy: float, yy: float, dx: float, dy: float, user_data: *void) -> void #c_call;

/**
* hb_paint_pop_transform_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @user_data: User data pointer passed to hb_paint_funcs_set_pop_transform_func()
*
* A virtual method for the #hb_paint_funcs_t to undo
* the effect of a prior call to the #hb_paint_funcs_push_transform_func_t
* vfunc.
*
* Since: 7.0.0
*/
hb_paint_pop_transform_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, user_data: *void) -> void #c_call;

/**
* hb_paint_color_glyph_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @glyph: the glyph ID
* @font: the font
* @user_data: User data pointer passed to hb_paint_funcs_set_color_glyph_func()
*
* A virtual method for the #hb_paint_funcs_t to render a color glyph by glyph index.
*
* Return value: %true if the glyph was painted, %false otherwise.
*
* Since: 8.2.0
*/
hb_paint_color_glyph_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, glyph: hb_codepoint_t, font: *hb_font_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_paint_push_clip_glyph_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @glyph: the glyph ID
* @font: the font
* @user_data: User data pointer passed to hb_paint_funcs_set_push_clip_glyph_func()
*
* A virtual method for the #hb_paint_funcs_t to clip
* subsequent paint calls to the outline of a glyph.
*
* The coordinates of the glyph outline are interpreted according
* to the current transform.
*
* This clip is applied in addition to the current clip,
* and remains in effect until a matching call to
* the #hb_paint_funcs_pop_clip_func_t vfunc.
*
* Since: 7.0.0
*/
hb_paint_push_clip_glyph_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, glyph: hb_codepoint_t, font: *hb_font_t, user_data: *void) -> void #c_call;

/**
* hb_paint_push_clip_rectangle_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @xmin: min X for the rectangle
* @ymin: min Y for the rectangle
* @xmax: max X for the rectangle
* @ymax: max Y for the rectangle
* @user_data: User data pointer passed to hb_paint_funcs_set_push_clip_rectangle_func()
*
* A virtual method for the #hb_paint_funcs_t to clip
* subsequent paint calls to a rectangle.
*
* The coordinates of the rectangle are interpreted according
* to the current transform.
*
* This clip is applied in addition to the current clip,
* and remains in effect until a matching call to
* the #hb_paint_funcs_pop_clip_func_t vfunc.
*
* Since: 7.0.0
*/
hb_paint_push_clip_rectangle_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, xmin: float, ymin: float, xmax: float, ymax: float, user_data: *void) -> void #c_call;

/**
* hb_paint_pop_clip_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @user_data: User data pointer passed to hb_paint_funcs_set_pop_clip_func()
*
* A virtual method for the #hb_paint_funcs_t to undo
* the effect of a prior call to the #hb_paint_funcs_push_clip_glyph_func_t
* or #hb_paint_funcs_push_clip_rectangle_func_t vfuncs.
*
* Since: 7.0.0
*/
hb_paint_pop_clip_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, user_data: *void) -> void #c_call;

/**
* hb_paint_color_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @is_foreground: whether the color is the foreground
* @color: The color to use, unpremultiplied
* @user_data: User data pointer passed to hb_paint_funcs_set_color_func()
*
* A virtual method for the #hb_paint_funcs_t to paint a
* color everywhere within the current clip.
*
* Since: 7.0.0
*/
hb_paint_color_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, is_foreground: hb_bool_t, color: hb_color_t, user_data: *void) -> void #c_call;

/**
* hb_paint_image_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @image: the image data
* @width: width of the raster image in pixels, or 0
* @height: height of the raster image in pixels, or 0
* @format: the image format as a tag
* @slant: the synthetic slant ratio to be applied to the image during rendering
* @extents: (nullable): glyph extents for desired rendering
* @user_data: User data pointer passed to hb_paint_funcs_set_image_func()
*
* A virtual method for the #hb_paint_funcs_t to paint a glyph image.
*
* This method is called for glyphs with image blobs in the CBDT,
* sbix or SVG tables. The @format identifies the kind of data that
* is contained in @image. Possible values include #HB_PAINT_IMAGE_FORMAT_PNG,
* #HB_PAINT_IMAGE_FORMAT_SVG and #HB_PAINT_IMAGE_FORMAT_BGRA.
*
* The image dimensions and glyph extents are provided if available,
* and should be used to size and position the image.
*
* Return value: Whether the operation was successful.
*
* Since: 7.0.0
*/
hb_paint_image_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, image: *hb_blob_t, width: u32, height: u32, format: hb_tag_t, slant: float, extents: *hb_glyph_extents_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_color_stop_t:
* @offset: the offset of the color stop
* @is_foreground: whether the color is the foreground
* @color: the color, unpremultiplied
*
* Information about a color stop on a color line.
*
* Color lines typically have offsets ranging between 0 and 1,
* but that is not required.
*
* Note: despite @color being unpremultiplied here, interpolation in
* gradients shall happen in premultiplied space. See the OpenType spec
* [COLR](https://learn.microsoft.com/en-us/typography/opentype/spec/colr)
* section for details.
*
* Since: 7.0.0
*/
hb_color_stop_t :: struct {
    offset:        float;
    is_foreground: hb_bool_t;
    color:         hb_color_t;
}

/**
* hb_paint_extend_t:
* @HB_PAINT_EXTEND_PAD: Outside the defined interval,
*   the color of the closest color stop is used.
* @HB_PAINT_EXTEND_REPEAT: The color line is repeated over
*   repeated multiples of the defined interval
* @HB_PAINT_EXTEND_REFLECT: The color line is repeated over
*      repeated intervals, as for the repeat mode.
*      However, in each repeated interval, the ordering of
*      color stops is the reverse of the adjacent interval.
*
* The values of this enumeration determine how color values
* outside the minimum and maximum defined offset on a #hb_color_line_t
* are determined.
*
* See the OpenType spec [COLR](https://learn.microsoft.com/en-us/typography/opentype/spec/colr)
* section for details.
*
* Since: 7.0.0
*/
hb_paint_extend_t :: enum s32 {
    PAD     :: 0;
    REPEAT  :: 1;
    REFLECT :: 2;

    HB_PAINT_EXTEND_PAD     :: PAD;
    HB_PAINT_EXTEND_REPEAT  :: REPEAT;
    HB_PAINT_EXTEND_REFLECT :: REFLECT;
}

/**
* hb_color_line_get_color_stops_func_t:
* @color_line: a #hb_color_line_t object
* @color_line_data: the data accompanying @color_line
* @start: the index of the first color stop to return
* @count: (inout) (optional): Input = the maximum number of feature tags to return;
*     Output = the actual number of feature tags returned (may be zero)
* @color_stops: (out) (array length=count) (optional): Array of #hb_color_stop_t to populate
* @user_data: the data accompanying this method
*
* A virtual method for the #hb_color_line_t to fetch color stops.
*
* Return value: the total number of color stops in @color_line
*
* Since: 7.0.0
*/
hb_color_line_get_color_stops_func_t :: #type (color_line: *hb_color_line_t, color_line_data: *void, start: u32, count: *u32, color_stops: *hb_color_stop_t, user_data: *void) -> u32 #c_call;

/**
* hb_color_line_get_extend_func_t:
* @color_line: a #hb_color_line_t object
* @color_line_data: the data accompanying @color_line
* @user_data: the data accompanying this method
*
* A virtual method for the @hb_color_line_t to fetches the extend mode.
*
* Return value: the extend mode of @color_line
*
* Since: 7.0.0
*/
hb_color_line_get_extend_func_t :: #type (color_line: *hb_color_line_t, color_line_data: *void, user_data: *void) -> hb_paint_extend_t #c_call;

/**
* hb_color_line_t:
*
* A struct containing color information for a gradient.
*
* Since: 7.0.0
*/
hb_color_line_t :: struct {
    data:                      *void;

    get_color_stops:           hb_color_line_get_color_stops_func_t;
    get_color_stops_user_data: *void;

    get_extend:                hb_color_line_get_extend_func_t;
    get_extend_user_data:      *void;

    reserved0:                 *void;
    reserved1:                 *void;
    reserved2:                 *void;
    reserved3:                 *void;
    reserved5:                 *void;
    reserved6:                 *void;
    reserved7:                 *void;
    reserved8:                 *void;
}

hb_color_line_get_color_stops :: (color_line: *hb_color_line_t, start: u32, count: *u32, color_stops: *hb_color_stop_t) -> u32 #foreign harfbuzz_freetype;

hb_color_line_get_extend :: (color_line: *hb_color_line_t) -> hb_paint_extend_t #foreign harfbuzz_freetype;

/**
* hb_paint_linear_gradient_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @color_line: Color information for the gradient
* @x0: X coordinate of the first point
* @y0: Y coordinate of the first point
* @x1: X coordinate of the second point
* @y1: Y coordinate of the second point
* @x2: X coordinate of the third point
* @y2: Y coordinate of the third point
* @user_data: User data pointer passed to hb_paint_funcs_set_linear_gradient_func()
*
* A virtual method for the #hb_paint_funcs_t to paint a linear
* gradient everywhere within the current clip.
*
* The @color_line object contains information about the colors of the gradients.
* It is only valid for the duration of the callback, you cannot keep it around.
*
* The coordinates of the points are interpreted according
* to the current transform.
*
* See the OpenType spec [COLR](https://learn.microsoft.com/en-us/typography/opentype/spec/colr)
* section for details on how the points define the direction
* of the gradient, and how to interpret the @color_line.
*
* Since: 7.0.0
*/
hb_paint_linear_gradient_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, color_line: *hb_color_line_t, x0: float, y0: float, x1: float, y1: float, x2: float, y2: float, user_data: *void) -> void #c_call;

/**
* hb_paint_radial_gradient_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @color_line: Color information for the gradient
* @x0: X coordinate of the first circle's center
* @y0: Y coordinate of the first circle's center
* @r0: radius of the first circle
* @x1: X coordinate of the second circle's center
* @y1: Y coordinate of the second circle's center
* @r1: radius of the second circle
* @user_data: User data pointer passed to hb_paint_funcs_set_radial_gradient_func()
*
* A virtual method for the #hb_paint_funcs_t to paint a radial
* gradient everywhere within the current clip.
*
* The @color_line object contains information about the colors of the gradients.
* It is only valid for the duration of the callback, you cannot keep it around.
*
* The coordinates of the points are interpreted according
* to the current transform.
*
* See the OpenType spec [COLR](https://learn.microsoft.com/en-us/typography/opentype/spec/colr)
* section for details on how the points define the direction
* of the gradient, and how to interpret the @color_line.
*
* Since: 7.0.0
*/
hb_paint_radial_gradient_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, color_line: *hb_color_line_t, x0: float, y0: float, r0: float, x1: float, y1: float, r1: float, user_data: *void) -> void #c_call;

/**
* hb_paint_sweep_gradient_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @color_line: Color information for the gradient
* @x0: X coordinate of the circle's center
* @y0: Y coordinate of the circle's center
* @start_angle: the start angle, in radians
* @end_angle: the end angle, in radians
* @user_data: User data pointer passed to hb_paint_funcs_set_sweep_gradient_func()
*
* A virtual method for the #hb_paint_funcs_t to paint a sweep
* gradient everywhere within the current clip.
*
* The @color_line object contains information about the colors of the gradients.
* It is only valid for the duration of the callback, you cannot keep it around.
*
* The coordinates of the points are interpreted according
* to the current transform.
*
* See the OpenType spec [COLR](https://learn.microsoft.com/en-us/typography/opentype/spec/colr)
* section for details on how the points define the direction
* of the gradient, and how to interpret the @color_line.
*
* Since: 7.0.0
*/
hb_paint_sweep_gradient_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, color_line: *hb_color_line_t, x0: float, y0: float, start_angle: float, end_angle: float, user_data: *void) -> void #c_call;

/**
* hb_paint_composite_mode_t:
* @HB_PAINT_COMPOSITE_MODE_CLEAR: clear destination layer (bounded)
* @HB_PAINT_COMPOSITE_MODE_SRC: replace destination layer (bounded)
* @HB_PAINT_COMPOSITE_MODE_SRC_OVER: draw source layer on top of destination layer
* (bounded)
* @HB_PAINT_COMPOSITE_MODE_SRC_IN: draw source where there was destination content
* (unbounded)
* @HB_PAINT_COMPOSITE_MODE_SRC_OUT: draw source where there was no destination
* content (unbounded)
* @HB_PAINT_COMPOSITE_MODE_SRC_ATOP: draw source on top of destination content and
* only there
* @HB_PAINT_COMPOSITE_MODE_DEST: ignore the source
* @HB_PAINT_COMPOSITE_MODE_DEST_OVER: draw destination on top of source
* @HB_PAINT_COMPOSITE_MODE_DEST_IN: leave destination only where there was
* source content (unbounded)
* @HB_PAINT_COMPOSITE_MODE_DEST_OUT: leave destination only where there was no
* source content
* @HB_PAINT_COMPOSITE_MODE_DEST_ATOP: leave destination on top of source content
* and only there (unbounded)
* @HB_PAINT_COMPOSITE_MODE_XOR: source and destination are shown where there is only
* one of them
* @HB_PAINT_COMPOSITE_MODE_PLUS: source and destination layers are accumulated
* @HB_PAINT_COMPOSITE_MODE_MULTIPLY: source and destination layers are multiplied.
* This causes the result to be at least as dark as the darker inputs.
* @HB_PAINT_COMPOSITE_MODE_SCREEN: source and destination are complemented and
* multiplied. This causes the result to be at least as light as the lighter
* inputs.
* @HB_PAINT_COMPOSITE_MODE_OVERLAY: multiplies or screens, depending on the
* lightness of the destination color.
* @HB_PAINT_COMPOSITE_MODE_DARKEN: replaces the destination with the source if it
* is darker, otherwise keeps the source.
* @HB_PAINT_COMPOSITE_MODE_LIGHTEN: replaces the destination with the source if it
* is lighter, otherwise keeps the source.
* @HB_PAINT_COMPOSITE_MODE_COLOR_DODGE: brightens the destination color to reflect
* the source color.
* @HB_PAINT_COMPOSITE_MODE_COLOR_BURN: darkens the destination color to reflect
* the source color.
* @HB_PAINT_COMPOSITE_MODE_HARD_LIGHT: Multiplies or screens, dependent on source
* color.
* @HB_PAINT_COMPOSITE_MODE_SOFT_LIGHT: Darkens or lightens, dependent on source
* color.
* @HB_PAINT_COMPOSITE_MODE_DIFFERENCE: Takes the difference of the source and
* destination color.
* @HB_PAINT_COMPOSITE_MODE_EXCLUSION: Produces an effect similar to difference, but
* with lower contrast.
* @HB_PAINT_COMPOSITE_MODE_HSL_HUE: Creates a color with the hue of the source
* and the saturation and luminosity of the target.
* @HB_PAINT_COMPOSITE_MODE_HSL_SATURATION: Creates a color with the saturation
* of the source and the hue and luminosity of the target. Painting with
* this mode onto a gray area produces no change.
* @HB_PAINT_COMPOSITE_MODE_HSL_COLOR: Creates a color with the hue and saturation
* of the source and the luminosity of the target. This preserves the gray
* levels of the target and is useful for coloring monochrome images or
* tinting color images.
* @HB_PAINT_COMPOSITE_MODE_HSL_LUMINOSITY: Creates a color with the luminosity of
* the source and the hue and saturation of the target. This produces an
* inverse effect to @HB_PAINT_COMPOSITE_MODE_HSL_COLOR.
*
* The values of this enumeration describe the compositing modes
* that can be used when combining temporary redirected drawing
* with the backdrop.
*
* See the OpenType spec [COLR](https://learn.microsoft.com/en-us/typography/opentype/spec/colr)
* section for details.
*
* Since: 7.0.0
*/
hb_paint_composite_mode_t :: enum s32 {
    CLEAR          :: 0;
    SRC            :: 1;
    DEST           :: 2;
    SRC_OVER       :: 3;
    DEST_OVER      :: 4;
    SRC_IN         :: 5;
    DEST_IN        :: 6;
    SRC_OUT        :: 7;
    DEST_OUT       :: 8;
    SRC_ATOP       :: 9;
    DEST_ATOP      :: 10;
    XOR            :: 11;
    PLUS           :: 12;
    SCREEN         :: 13;
    OVERLAY        :: 14;
    DARKEN         :: 15;
    LIGHTEN        :: 16;
    COLOR_DODGE    :: 17;
    COLOR_BURN     :: 18;
    HARD_LIGHT     :: 19;
    SOFT_LIGHT     :: 20;
    DIFFERENCE     :: 21;
    EXCLUSION      :: 22;
    MULTIPLY       :: 23;
    HSL_HUE        :: 24;
    HSL_SATURATION :: 25;
    HSL_COLOR      :: 26;
    HSL_LUMINOSITY :: 27;

    HB_PAINT_COMPOSITE_MODE_CLEAR          :: CLEAR;
    HB_PAINT_COMPOSITE_MODE_SRC            :: SRC;
    HB_PAINT_COMPOSITE_MODE_DEST           :: DEST;
    HB_PAINT_COMPOSITE_MODE_SRC_OVER       :: SRC_OVER;
    HB_PAINT_COMPOSITE_MODE_DEST_OVER      :: DEST_OVER;
    HB_PAINT_COMPOSITE_MODE_SRC_IN         :: SRC_IN;
    HB_PAINT_COMPOSITE_MODE_DEST_IN        :: DEST_IN;
    HB_PAINT_COMPOSITE_MODE_SRC_OUT        :: SRC_OUT;
    HB_PAINT_COMPOSITE_MODE_DEST_OUT       :: DEST_OUT;
    HB_PAINT_COMPOSITE_MODE_SRC_ATOP       :: SRC_ATOP;
    HB_PAINT_COMPOSITE_MODE_DEST_ATOP      :: DEST_ATOP;
    HB_PAINT_COMPOSITE_MODE_XOR            :: XOR;
    HB_PAINT_COMPOSITE_MODE_PLUS           :: PLUS;
    HB_PAINT_COMPOSITE_MODE_SCREEN         :: SCREEN;
    HB_PAINT_COMPOSITE_MODE_OVERLAY        :: OVERLAY;
    HB_PAINT_COMPOSITE_MODE_DARKEN         :: DARKEN;
    HB_PAINT_COMPOSITE_MODE_LIGHTEN        :: LIGHTEN;
    HB_PAINT_COMPOSITE_MODE_COLOR_DODGE    :: COLOR_DODGE;
    HB_PAINT_COMPOSITE_MODE_COLOR_BURN     :: COLOR_BURN;
    HB_PAINT_COMPOSITE_MODE_HARD_LIGHT     :: HARD_LIGHT;
    HB_PAINT_COMPOSITE_MODE_SOFT_LIGHT     :: SOFT_LIGHT;
    HB_PAINT_COMPOSITE_MODE_DIFFERENCE     :: DIFFERENCE;
    HB_PAINT_COMPOSITE_MODE_EXCLUSION      :: EXCLUSION;
    HB_PAINT_COMPOSITE_MODE_MULTIPLY       :: MULTIPLY;
    HB_PAINT_COMPOSITE_MODE_HSL_HUE        :: HSL_HUE;
    HB_PAINT_COMPOSITE_MODE_HSL_SATURATION :: HSL_SATURATION;
    HB_PAINT_COMPOSITE_MODE_HSL_COLOR      :: HSL_COLOR;
    HB_PAINT_COMPOSITE_MODE_HSL_LUMINOSITY :: HSL_LUMINOSITY;
}

/**
* hb_paint_push_group_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @user_data: User data pointer passed to hb_paint_funcs_set_push_group_func()
*
* A virtual method for the #hb_paint_funcs_t to use
* an intermediate surface for subsequent paint calls.
*
* The drawing will be redirected to an intermediate surface
* until a matching call to the #hb_paint_funcs_pop_group_func_t
* vfunc.
*
* Since: 7.0.0
*/
hb_paint_push_group_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, user_data: *void) -> void #c_call;

/**
* hb_paint_pop_group_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @mode: the compositing mode to use
* @user_data: User data pointer passed to hb_paint_funcs_set_pop_group_func()
*
* A virtual method for the #hb_paint_funcs_t to undo
* the effect of a prior call to the #hb_paint_funcs_push_group_func_t
* vfunc.
*
* This call stops the redirection to the intermediate surface,
* and then composites it on the previous surface, using the
* compositing mode passed to this call.
*
* Since: 7.0.0
*/
hb_paint_pop_group_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, mode: hb_paint_composite_mode_t, user_data: *void) -> void #c_call;

/**
* hb_paint_custom_palette_color_func_t:
* @funcs: paint functions object
* @paint_data: The data accompanying the paint functions in hb_font_paint_glyph()
* @color_index: the color index
* @color: (out): fetched color
* @user_data: User data pointer passed to hb_paint_funcs_set_pop_group_func()
*
* A virtual method for the #hb_paint_funcs_t to fetch a color from the custom
* color palette.
*
* Custom palette colors override the colors from the fonts selected color
* palette. It is not necessary to override all palette entries; for entries
* that should be taken from the font palette, return `false`.
*
* This function might get called multiple times, but the custom palette is
* expected to remain unchanged for duration of a hb_font_paint_glyph() call.
*
* Return value: `true` if found, `false` otherwise
*
* Since: 7.0.0
*/
hb_paint_custom_palette_color_func_t :: #type (funcs: *hb_paint_funcs_t, paint_data: *void, color_index: u32, color: *hb_color_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_paint_funcs_set_push_transform_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The push-transform callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the push-transform callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_push_transform_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_push_transform_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_pop_transform_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The pop-transform callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the pop-transform callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_pop_transform_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_pop_transform_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_color_glyph_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The color-glyph callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the color-glyph callback on the paint functions struct.
*
* Since: 8.2.0
*/
hb_paint_funcs_set_color_glyph_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_color_glyph_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_push_clip_glyph_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The push-clip-glyph callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the push-clip-glyph callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_push_clip_glyph_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_push_clip_glyph_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_push_clip_rectangle_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The push-clip-rectangle callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the push-clip-rect callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_push_clip_rectangle_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_push_clip_rectangle_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_pop_clip_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The pop-clip callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the pop-clip callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_pop_clip_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_pop_clip_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_color_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The paint-color callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the paint-color callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_color_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_color_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_image_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The paint-image callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the paint-image callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_image_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_image_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_linear_gradient_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The linear-gradient callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the linear-gradient callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_linear_gradient_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_linear_gradient_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_radial_gradient_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The radial-gradient callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the radial-gradient callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_radial_gradient_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_radial_gradient_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_sweep_gradient_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The sweep-gradient callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the sweep-gradient callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_sweep_gradient_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_sweep_gradient_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_push_group_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The push-group callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the push-group callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_push_group_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_push_group_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_pop_group_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The pop-group callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the pop-group callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_pop_group_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_pop_group_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_paint_funcs_set_custom_palette_color_func:
* @funcs: A paint functions struct
* @func: (closure user_data) (destroy destroy) (scope notified): The custom-palette-color callback
* @user_data: Data to pass to @func
* @destroy: (nullable): Function to call when @user_data is no longer needed
*
* Sets the custom-palette-color callback on the paint functions struct.
*
* Since: 7.0.0
*/
hb_paint_funcs_set_custom_palette_color_func :: (funcs: *hb_paint_funcs_t, func: hb_paint_custom_palette_color_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/*
* Manual API
*/
hb_paint_push_transform :: (funcs: *hb_paint_funcs_t, paint_data: *void, _xx: float, yx: float, xy: float, yy: float, dx: float, dy: float) -> void #foreign harfbuzz_freetype;

hb_paint_pop_transform :: (funcs: *hb_paint_funcs_t, paint_data: *void) -> void #foreign harfbuzz_freetype;

hb_paint_color_glyph :: (funcs: *hb_paint_funcs_t, paint_data: *void, glyph: hb_codepoint_t, font: *hb_font_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_paint_push_clip_glyph :: (funcs: *hb_paint_funcs_t, paint_data: *void, glyph: hb_codepoint_t, font: *hb_font_t) -> void #foreign harfbuzz_freetype;

hb_paint_push_clip_rectangle :: (funcs: *hb_paint_funcs_t, paint_data: *void, xmin: float, ymin: float, xmax: float, ymax: float) -> void #foreign harfbuzz_freetype;

hb_paint_pop_clip :: (funcs: *hb_paint_funcs_t, paint_data: *void) -> void #foreign harfbuzz_freetype;

hb_paint_color :: (funcs: *hb_paint_funcs_t, paint_data: *void, is_foreground: hb_bool_t, color: hb_color_t) -> void #foreign harfbuzz_freetype;

hb_paint_image :: (funcs: *hb_paint_funcs_t, paint_data: *void, image: *hb_blob_t, width: u32, height: u32, format: hb_tag_t, slant: float, extents: *hb_glyph_extents_t) -> void #foreign harfbuzz_freetype;

hb_paint_linear_gradient :: (funcs: *hb_paint_funcs_t, paint_data: *void, color_line: *hb_color_line_t, x0: float, y0: float, x1: float, y1: float, x2: float, y2: float) -> void #foreign harfbuzz_freetype;

hb_paint_radial_gradient :: (funcs: *hb_paint_funcs_t, paint_data: *void, color_line: *hb_color_line_t, x0: float, y0: float, r0: float, x1: float, y1: float, r1: float) -> void #foreign harfbuzz_freetype;

hb_paint_sweep_gradient :: (funcs: *hb_paint_funcs_t, paint_data: *void, color_line: *hb_color_line_t, x0: float, y0: float, start_angle: float, end_angle: float) -> void #foreign harfbuzz_freetype;

hb_paint_push_group :: (funcs: *hb_paint_funcs_t, paint_data: *void) -> void #foreign harfbuzz_freetype;

hb_paint_pop_group :: (funcs: *hb_paint_funcs_t, paint_data: *void, mode: hb_paint_composite_mode_t) -> void #foreign harfbuzz_freetype;

hb_paint_custom_palette_color :: (funcs: *hb_paint_funcs_t, paint_data: *void, color_index: u32, color: *hb_color_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_funcs_t :: struct {}

hb_font_funcs_create :: () -> *hb_font_funcs_t #foreign harfbuzz_freetype;

hb_font_funcs_get_empty :: () -> *hb_font_funcs_t #foreign harfbuzz_freetype;

hb_font_funcs_reference :: (ffuncs: *hb_font_funcs_t) -> *hb_font_funcs_t #foreign harfbuzz_freetype;

hb_font_funcs_destroy :: (ffuncs: *hb_font_funcs_t) -> void #foreign harfbuzz_freetype;

hb_font_funcs_set_user_data :: (ffuncs: *hb_font_funcs_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_funcs_get_user_data :: (ffuncs: *hb_font_funcs_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_font_funcs_make_immutable :: (ffuncs: *hb_font_funcs_t) -> void #foreign harfbuzz_freetype;

hb_font_funcs_is_immutable :: (ffuncs: *hb_font_funcs_t) -> hb_bool_t #foreign harfbuzz_freetype;

/**
* hb_font_extents_t:
* @ascender: The height of typographic ascenders.
* @descender: The depth of typographic descenders.
* @line_gap: The suggested line-spacing gap.
*
* Font-wide extent values, measured in font units.
*
* Note that typically @ascender is positive and @descender
* negative, in coordinate systems that grow up.
**/
hb_font_extents_t :: struct {
    ascender:  hb_position_t;
    descender: hb_position_t;
    line_gap:  hb_position_t;

    /*< private >*/
    reserved9: hb_position_t;
    reserved8: hb_position_t;
    reserved7: hb_position_t;
    reserved6: hb_position_t;
    reserved5: hb_position_t;
    reserved4: hb_position_t;
    reserved3: hb_position_t;
    reserved2: hb_position_t;
    reserved1: hb_position_t;
}

/**
* hb_font_get_font_extents_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @extents: (out): The font extents retrieved
* @user_data: User data pointer passed by the caller
*
* This method should retrieve the extents for a font.
*
**/
hb_font_get_font_extents_func_t :: #type (font: *hb_font_t, font_data: *void, extents: *hb_font_extents_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_get_font_h_extents_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the extents for a font, for horizontal-direction
* text segments. Extents must be returned in an #hb_glyph_extents output
* parameter.
*
**/
hb_font_get_font_h_extents_func_t :: hb_font_get_font_extents_func_t;

/**
* hb_font_get_font_v_extents_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the extents for a font, for vertical-direction
* text segments. Extents must be returned in an #hb_glyph_extents output
* parameter.
*
**/
hb_font_get_font_v_extents_func_t :: hb_font_get_font_extents_func_t;

/**
* hb_font_get_nominal_glyph_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @unicode: The Unicode code point to query
* @glyph: (out): The glyph ID retrieved
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the nominal glyph ID for a specified Unicode code
* point. Glyph IDs must be returned in a #hb_codepoint_t output parameter.
*
* Return value: `true` if data found, `false` otherwise
*
**/
hb_font_get_nominal_glyph_func_t :: #type (font: *hb_font_t, font_data: *void, unicode: hb_codepoint_t, glyph: *hb_codepoint_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_get_variation_glyph_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @unicode: The Unicode code point to query
* @variation_selector: The  variation-selector code point to query
* @glyph: (out): The glyph ID retrieved
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the glyph ID for a specified Unicode code point
* followed by a specified Variation Selector code point. Glyph IDs must be
* returned in a #hb_codepoint_t output parameter.
*
* Return value: `true` if data found, `false` otherwise
*
**/
hb_font_get_variation_glyph_func_t :: #type (font: *hb_font_t, font_data: *void, unicode: hb_codepoint_t, variation_selector: hb_codepoint_t, glyph: *hb_codepoint_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_get_nominal_glyphs_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @count: number of code points to query
* @first_unicode: The first Unicode code point to query
* @unicode_stride: The stride between successive code points
* @first_glyph: (out): The first glyph ID retrieved
* @glyph_stride: The stride between successive glyph IDs
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the nominal glyph IDs for a sequence of
* Unicode code points. Glyph IDs must be returned in a #hb_codepoint_t
* output parameter.
*
* Return value: the number of code points processed
*
**/
hb_font_get_nominal_glyphs_func_t :: #type (font: *hb_font_t, font_data: *void, count: u32, first_unicode: *hb_codepoint_t, unicode_stride: u32, first_glyph: *hb_codepoint_t, glyph_stride: u32, user_data: *void) -> u32 #c_call;

/**
* hb_font_get_glyph_advance_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the advance for a specified glyph. The
* method must return an #hb_position_t.
*
* Return value: The advance of @glyph within @font
*
**/
hb_font_get_glyph_advance_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, user_data: *void) -> hb_position_t #c_call;

/**
* hb_font_get_glyph_h_advance_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the advance for a specified glyph, in
* horizontal-direction text segments. Advances must be returned in
* an #hb_position_t output parameter.
*
**/
hb_font_get_glyph_h_advance_func_t :: hb_font_get_glyph_advance_func_t;

/**
* hb_font_get_glyph_v_advance_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the advance for a specified glyph, in
* vertical-direction text segments. Advances must be returned in
* an #hb_position_t output parameter.
*
**/
hb_font_get_glyph_v_advance_func_t :: hb_font_get_glyph_advance_func_t;

/**
* hb_font_get_glyph_advances_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @count: The number of glyph IDs in the sequence queried
* @first_glyph: The first glyph ID to query
* @glyph_stride: The stride between successive glyph IDs
* @first_advance: (out): The first advance retrieved
* @advance_stride: The stride between successive advances
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the advances for a sequence of glyphs.
*
**/
hb_font_get_glyph_advances_func_t :: #type (font: *hb_font_t, font_data: *void, count: u32, first_glyph: *hb_codepoint_t, glyph_stride: u32, first_advance: *hb_position_t, advance_stride: u32, user_data: *void) -> void #c_call;

/**
* hb_font_get_glyph_h_advances_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the advances for a sequence of glyphs, in
* horizontal-direction text segments.
*
**/
hb_font_get_glyph_h_advances_func_t :: hb_font_get_glyph_advances_func_t;

/**
* hb_font_get_glyph_v_advances_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the advances for a sequence of glyphs, in
* vertical-direction text segments.
*
**/
hb_font_get_glyph_v_advances_func_t :: hb_font_get_glyph_advances_func_t;

/**
* hb_font_get_glyph_origin_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @x: (out): The X coordinate of the origin
* @y: (out): The Y coordinate of the origin
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the (X,Y) coordinates (in font units) of the
* origin for a glyph. Each coordinate must be returned in an #hb_position_t
* output parameter.
*
* Return value: `true` if data found, `false` otherwise
*
**/
hb_font_get_glyph_origin_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, x: *hb_position_t, y: *hb_position_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_get_glyph_h_origin_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the (X,Y) coordinates (in font units) of the
* origin for a glyph, for horizontal-direction text segments. Each
* coordinate must be returned in an #hb_position_t output parameter.
*
**/
hb_font_get_glyph_h_origin_func_t :: hb_font_get_glyph_origin_func_t;

/**
* hb_font_get_glyph_v_origin_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the (X,Y) coordinates (in font units) of the
* origin for a glyph, for vertical-direction text segments. Each coordinate
* must be returned in an #hb_position_t output parameter.
*
**/
hb_font_get_glyph_v_origin_func_t :: hb_font_get_glyph_origin_func_t;

/**
* hb_font_get_glyph_kerning_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @first_glyph: The glyph ID of the first glyph in the glyph pair
* @second_glyph: The glyph ID of the second glyph in the glyph pair
* @user_data: User data pointer passed by the caller
*
* This method should retrieve the kerning-adjustment value for a glyph-pair in
* the specified font, for horizontal text segments.
*
**/
hb_font_get_glyph_kerning_func_t :: #type (font: *hb_font_t, font_data: *void, first_glyph: hb_codepoint_t, second_glyph: hb_codepoint_t, user_data: *void) -> hb_position_t #c_call;

/**
* hb_font_get_glyph_h_kerning_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the kerning-adjustment value for a glyph-pair in
* the specified font, for horizontal text segments.
*
**/
hb_font_get_glyph_h_kerning_func_t :: hb_font_get_glyph_kerning_func_t;

/**
* hb_font_get_glyph_extents_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @extents: (out): The #hb_glyph_extents_t retrieved
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the extents for a specified glyph. Extents must be
* returned in an #hb_glyph_extents output parameter.
*
* Return value: `true` if data found, `false` otherwise
*
**/
hb_font_get_glyph_extents_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, extents: *hb_glyph_extents_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_get_glyph_contour_point_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @point_index: The contour-point index to query
* @x: (out): The X value retrieved for the contour point
* @y: (out): The Y value retrieved for the contour point
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the (X,Y) coordinates (in font units) for a
* specified contour point in a glyph. Each coordinate must be returned as
* an #hb_position_t output parameter.
*
* Return value: `true` if data found, `false` otherwise
*
**/
hb_font_get_glyph_contour_point_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, point_index: u32, x: *hb_position_t, y: *hb_position_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_get_glyph_name_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @name: (out) (array length=size): Name string retrieved for the glyph ID
* @size: Length of the glyph-name string retrieved
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the glyph name that corresponds to a
* glyph ID. The name should be returned in a string output parameter.
*
* Return value: `true` if data found, `false` otherwise
*
**/
hb_font_get_glyph_name_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, name: *u8, size: u32, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_get_glyph_from_name_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @name: (array length=len): The name string to query
* @len: The length of the name queried
* @glyph: (out): The glyph ID retrieved
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the glyph ID that corresponds to a glyph-name
* string.
*
* Return value: `true` if data found, `false` otherwise
*
**/
hb_font_get_glyph_from_name_func_t :: #type (font: *hb_font_t, font_data: *void, name: *u8, len: s32, glyph: *hb_codepoint_t, user_data: *void) -> hb_bool_t #c_call;

/**
* hb_font_draw_glyph_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @draw_funcs: The draw functions to send the shape data to
* @draw_data: The data accompanying the draw functions
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* Since: 7.0.0
*
**/
hb_font_draw_glyph_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, draw_funcs: *hb_draw_funcs_t, draw_data: *void, user_data: *void) -> void #c_call;

/**
* hb_font_paint_glyph_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @paint_funcs: The paint functions to use
* @paint_data: The data accompanying the paint functions
* @palette_index: The color palette to use
* @foreground: The foreground color
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* Since: 7.0.0
*/
hb_font_paint_glyph_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, paint_funcs: *hb_paint_funcs_t, paint_data: *void, palette_index: u32, foreground: hb_color_t, user_data: *void) -> void #c_call;

/**
* hb_font_funcs_set_font_h_extents_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_font_h_extents_func_t.
*
* Since: 1.1.2
**/
hb_font_funcs_set_font_h_extents_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_font_h_extents_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_font_v_extents_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_font_v_extents_func_t.
*
* Since: 1.1.2
**/
hb_font_funcs_set_font_v_extents_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_font_v_extents_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_nominal_glyph_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_nominal_glyph_func_t.
*
* Since: 1.2.3
**/
hb_font_funcs_set_nominal_glyph_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_nominal_glyph_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_nominal_glyphs_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_nominal_glyphs_func_t.
*
* Since: 2.0.0
**/
hb_font_funcs_set_nominal_glyphs_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_nominal_glyphs_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_variation_glyph_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_variation_glyph_func_t.
*
* Since: 1.2.3
**/
hb_font_funcs_set_variation_glyph_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_variation_glyph_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_h_advance_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_h_advance_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_h_advance_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_h_advance_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_v_advance_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_v_advance_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_v_advance_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_v_advance_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_h_advances_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_h_advances_func_t.
*
* Since: 1.8.6
**/
hb_font_funcs_set_glyph_h_advances_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_h_advances_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_v_advances_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_v_advances_func_t.
*
* Since: 1.8.6
**/
hb_font_funcs_set_glyph_v_advances_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_v_advances_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_h_origin_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_h_origin_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_h_origin_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_h_origin_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_v_origin_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_v_origin_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_v_origin_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_v_origin_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_h_kerning_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_h_kerning_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_h_kerning_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_h_kerning_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_extents_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_extents_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_extents_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_extents_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_contour_point_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_contour_point_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_contour_point_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_contour_point_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_name_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_name_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_name_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_name_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_glyph_from_name_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_from_name_func_t.
*
* Since: 0.9.2
**/
hb_font_funcs_set_glyph_from_name_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_from_name_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_draw_glyph_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_draw_glyph_func_t.
*
* Since: 7.0.0
**/
hb_font_funcs_set_draw_glyph_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_draw_glyph_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_funcs_set_paint_glyph_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is no longer needed
*
* Sets the implementation function for #hb_font_paint_glyph_func_t.
*
* Since: 7.0.0
*/
hb_font_funcs_set_paint_glyph_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_paint_glyph_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/* func dispatch */
hb_font_get_h_extents :: (font: *hb_font_t, extents: *hb_font_extents_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_v_extents :: (font: *hb_font_t, extents: *hb_font_extents_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_nominal_glyph :: (font: *hb_font_t, unicode: hb_codepoint_t, glyph: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_variation_glyph :: (font: *hb_font_t, unicode: hb_codepoint_t, variation_selector: hb_codepoint_t, glyph: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_nominal_glyphs :: (font: *hb_font_t, count: u32, first_unicode: *hb_codepoint_t, unicode_stride: u32, first_glyph: *hb_codepoint_t, glyph_stride: u32) -> u32 #foreign harfbuzz_freetype;

hb_font_get_glyph_h_advance :: (font: *hb_font_t, glyph: hb_codepoint_t) -> hb_position_t #foreign harfbuzz_freetype;

hb_font_get_glyph_v_advance :: (font: *hb_font_t, glyph: hb_codepoint_t) -> hb_position_t #foreign harfbuzz_freetype;

hb_font_get_glyph_h_advances :: (font: *hb_font_t, count: u32, first_glyph: *hb_codepoint_t, glyph_stride: u32, first_advance: *hb_position_t, advance_stride: u32) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_v_advances :: (font: *hb_font_t, count: u32, first_glyph: *hb_codepoint_t, glyph_stride: u32, first_advance: *hb_position_t, advance_stride: u32) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_h_origin :: (font: *hb_font_t, glyph: hb_codepoint_t, x: *hb_position_t, y: *hb_position_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_glyph_v_origin :: (font: *hb_font_t, glyph: hb_codepoint_t, x: *hb_position_t, y: *hb_position_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_glyph_h_kerning :: (font: *hb_font_t, left_glyph: hb_codepoint_t, right_glyph: hb_codepoint_t) -> hb_position_t #foreign harfbuzz_freetype;

hb_font_get_glyph_extents :: (font: *hb_font_t, glyph: hb_codepoint_t, extents: *hb_glyph_extents_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_glyph_contour_point :: (font: *hb_font_t, glyph: hb_codepoint_t, point_index: u32, x: *hb_position_t, y: *hb_position_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_glyph_name :: (font: *hb_font_t, glyph: hb_codepoint_t, name: *u8, size: u32) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_glyph_from_name :: (font: *hb_font_t, name: *u8, len: s32, glyph: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_draw_glyph :: (font: *hb_font_t, glyph: hb_codepoint_t, dfuncs: *hb_draw_funcs_t, draw_data: *void) -> void #foreign harfbuzz_freetype;

hb_font_paint_glyph :: (font: *hb_font_t, glyph: hb_codepoint_t, pfuncs: *hb_paint_funcs_t, paint_data: *void, palette_index: u32, foreground: hb_color_t) -> void #foreign harfbuzz_freetype;

/* Calls either hb_font_get_nominal_glyph() if variation_selector is 0,
* otherwise calls hb_font_get_variation_glyph(). */
hb_font_get_glyph :: (font: *hb_font_t, unicode: hb_codepoint_t, variation_selector: hb_codepoint_t, glyph: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_extents_for_direction :: (font: *hb_font_t, direction: hb_direction_t, extents: *hb_font_extents_t) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_advance_for_direction :: (font: *hb_font_t, glyph: hb_codepoint_t, direction: hb_direction_t, x: *hb_position_t, y: *hb_position_t) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_advances_for_direction :: (font: *hb_font_t, direction: hb_direction_t, count: u32, first_glyph: *hb_codepoint_t, glyph_stride: u32, first_advance: *hb_position_t, advance_stride: u32) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_origin_for_direction :: (font: *hb_font_t, glyph: hb_codepoint_t, direction: hb_direction_t, x: *hb_position_t, y: *hb_position_t) -> void #foreign harfbuzz_freetype;

hb_font_add_glyph_origin_for_direction :: (font: *hb_font_t, glyph: hb_codepoint_t, direction: hb_direction_t, x: *hb_position_t, y: *hb_position_t) -> void #foreign harfbuzz_freetype;

hb_font_subtract_glyph_origin_for_direction :: (font: *hb_font_t, glyph: hb_codepoint_t, direction: hb_direction_t, x: *hb_position_t, y: *hb_position_t) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_kerning_for_direction :: (font: *hb_font_t, first_glyph: hb_codepoint_t, second_glyph: hb_codepoint_t, direction: hb_direction_t, x: *hb_position_t, y: *hb_position_t) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_extents_for_origin :: (font: *hb_font_t, glyph: hb_codepoint_t, direction: hb_direction_t, extents: *hb_glyph_extents_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_glyph_contour_point_for_origin :: (font: *hb_font_t, glyph: hb_codepoint_t, point_index: u32, direction: hb_direction_t, x: *hb_position_t, y: *hb_position_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* Generates gidDDD if glyph has no name. */
hb_font_glyph_to_string :: (font: *hb_font_t, glyph: hb_codepoint_t, s: *u8, size: u32) -> void #foreign harfbuzz_freetype;

/* Parses gidDDD and uniUUUU strings automatically. */
hb_font_glyph_from_string :: (font: *hb_font_t, s: *u8, len: s32, glyph: *hb_codepoint_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* Fonts are very light-weight objects */
hb_font_create :: (face: *hb_face_t) -> *hb_font_t #foreign harfbuzz_freetype;

hb_font_create_sub_font :: (parent: *hb_font_t) -> *hb_font_t #foreign harfbuzz_freetype;

hb_font_get_empty :: () -> *hb_font_t #foreign harfbuzz_freetype;

hb_font_reference :: (font: *hb_font_t) -> *hb_font_t #foreign harfbuzz_freetype;

hb_font_destroy :: (font: *hb_font_t) -> void #foreign harfbuzz_freetype;

hb_font_set_user_data :: (font: *hb_font_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_user_data :: (font: *hb_font_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_font_make_immutable :: (font: *hb_font_t) -> void #foreign harfbuzz_freetype;

hb_font_is_immutable :: (font: *hb_font_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_font_get_serial :: (font: *hb_font_t) -> u32 #foreign harfbuzz_freetype;

hb_font_changed :: (font: *hb_font_t) -> void #foreign harfbuzz_freetype;

hb_font_set_parent :: (font: *hb_font_t, parent: *hb_font_t) -> void #foreign harfbuzz_freetype;

hb_font_get_parent :: (font: *hb_font_t) -> *hb_font_t #foreign harfbuzz_freetype;

hb_font_set_face :: (font: *hb_font_t, face: *hb_face_t) -> void #foreign harfbuzz_freetype;

hb_font_get_face :: (font: *hb_font_t) -> *hb_face_t #foreign harfbuzz_freetype;

hb_font_set_funcs :: (font: *hb_font_t, klass: *hb_font_funcs_t, font_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/* Be *very* careful with this function! */
hb_font_set_funcs_data :: (font: *hb_font_t, font_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

hb_font_set_scale :: (font: *hb_font_t, x_scale: s32, y_scale: s32) -> void #foreign harfbuzz_freetype;

hb_font_get_scale :: (font: *hb_font_t, x_scale: *s32, y_scale: *s32) -> void #foreign harfbuzz_freetype;

/*
* A zero value means "no hinting in that direction"
*/
hb_font_set_ppem :: (font: *hb_font_t, x_ppem: u32, y_ppem: u32) -> void #foreign harfbuzz_freetype;

hb_font_get_ppem :: (font: *hb_font_t, x_ppem: *u32, y_ppem: *u32) -> void #foreign harfbuzz_freetype;

/*
* Point size per EM.  Used for optical-sizing in CoreText.
* A value of zero means "not set".
*/
hb_font_set_ptem :: (font: *hb_font_t, ptem: float) -> void #foreign harfbuzz_freetype;

hb_font_get_ptem :: (font: *hb_font_t) -> float #foreign harfbuzz_freetype;

hb_font_set_synthetic_bold :: (font: *hb_font_t, x_embolden: float, y_embolden: float, in_place: hb_bool_t) -> void #foreign harfbuzz_freetype;

hb_font_get_synthetic_bold :: (font: *hb_font_t, x_embolden: *float, y_embolden: *float, in_place: *hb_bool_t) -> void #foreign harfbuzz_freetype;

hb_font_set_synthetic_slant :: (font: *hb_font_t, slant: float) -> void #foreign harfbuzz_freetype;

hb_font_get_synthetic_slant :: (font: *hb_font_t) -> float #foreign harfbuzz_freetype;

hb_font_set_variations :: (font: *hb_font_t, variations: *hb_variation_t, variations_length: u32) -> void #foreign harfbuzz_freetype;

hb_font_set_variation :: (font: *hb_font_t, tag: hb_tag_t, value: float) -> void #foreign harfbuzz_freetype;

hb_font_set_var_coords_design :: (font: *hb_font_t, coords: *float, coords_length: u32) -> void #foreign harfbuzz_freetype;

hb_font_get_var_coords_design :: (font: *hb_font_t, length: *u32) -> *float #foreign harfbuzz_freetype;

hb_font_set_var_coords_normalized :: (font: *hb_font_t, coords: *s32, coords_length: u32) -> void #foreign harfbuzz_freetype;

hb_font_get_var_coords_normalized :: (font: *hb_font_t, length: *u32) -> *s32 #foreign harfbuzz_freetype;

hb_font_set_var_named_instance :: (font: *hb_font_t, instance_index: u32) -> void #foreign harfbuzz_freetype;

hb_font_get_var_named_instance :: (font: *hb_font_t) -> u32 #foreign harfbuzz_freetype;

/**
* hb_glyph_info_t:
* @codepoint: either a Unicode code point (before shaping) or a glyph index
*             (after shaping).
* @cluster: the index of the character in the original text that corresponds
*           to this #hb_glyph_info_t, or whatever the client passes to
*           hb_buffer_add(). More than one #hb_glyph_info_t can have the same
*           @cluster value, if they resulted from the same character (e.g. one
*           to many glyph substitution), and when more than one character gets
*           merged in the same glyph (e.g. many to one glyph substitution) the
*           #hb_glyph_info_t will have the smallest cluster value of them.
*           By default some characters are merged into the same cluster
*           (e.g. combining marks have the same cluster as their bases)
*           even if they are separate glyphs, hb_buffer_set_cluster_level()
*           allow selecting more fine-grained cluster handling.
*
* The #hb_glyph_info_t is the structure that holds information about the
* glyphs and their relation to input text.
*/
hb_glyph_info_t :: struct {
    codepoint: hb_codepoint_t;

    /*< private >*/
    mask:      hb_mask_t;

    /*< public >*/
    cluster:   u32;

    /*< private >*/
    var1:      hb_var_int_t;
    var2:      hb_var_int_t;
}

/**
* hb_glyph_flags_t:
* @HB_GLYPH_FLAG_UNSAFE_TO_BREAK: Indicates that if input text is broken at the
* 				   beginning of the cluster this glyph is part of,
* 				   then both sides need to be re-shaped, as the
* 				   result might be different.
* 				   On the flip side, it means that when this
* 				   flag is not present, then it is safe to break
* 				   the glyph-run at the beginning of this
* 				   cluster, and the two sides will represent the
* 				   exact same result one would get if breaking
* 				   input text at the beginning of this cluster
* 				   and shaping the two sides separately.
* 				   This can be used to optimize paragraph
* 				   layout, by avoiding re-shaping of each line
* 				   after line-breaking.
* @HB_GLYPH_FLAG_UNSAFE_TO_CONCAT: Indicates that if input text is changed on one
* 				   side of the beginning of the cluster this glyph
* 				   is part of, then the shaping results for the
* 				   other side might change.
* 				   Note that the absence of this flag will NOT by
* 				   itself mean that it IS safe to concat text.
* 				   Only two pieces of text both of which clear of
* 				   this flag can be concatenated safely.
* 				   This can be used to optimize paragraph
* 				   layout, by avoiding re-shaping of each line
* 				   after line-breaking, by limiting the
* 				   reshaping to a small piece around the
* 				   breaking position only, even if the breaking
* 				   position carries the
* 				   #HB_GLYPH_FLAG_UNSAFE_TO_BREAK or when
* 				   hyphenation or other text transformation
* 				   happens at line-break position, in the following
* 				   way:
* 				   1. Iterate back from the line-break position
* 				   until the first cluster start position that is
* 				   NOT unsafe-to-concat, 2. shape the segment from
* 				   there till the end of line, 3. check whether the
* 				   resulting glyph-run also is clear of the
* 				   unsafe-to-concat at its start-of-text position;
* 				   if it is, just splice it into place and the line
* 				   is shaped; If not, move on to a position further
* 				   back that is clear of unsafe-to-concat and retry
* 				   from there, and repeat.
* 				   At the start of next line a similar algorithm can
* 				   be implemented. That is: 1. Iterate forward from
* 				   the line-break position until the first cluster
* 				   start position that is NOT unsafe-to-concat, 2.
* 				   shape the segment from beginning of the line to
* 				   that position, 3. check whether the resulting
* 				   glyph-run also is clear of the unsafe-to-concat
* 				   at its end-of-text position; if it is, just splice
* 				   it into place and the beginning is shaped; If not,
* 				   move on to a position further forward that is clear
* 				   of unsafe-to-concat and retry up to there, and repeat.
* 				   A slight complication will arise in the
* 				   implementation of the algorithm above,
* 				   because while our buffer API has a way to
* 				   return flags for position corresponding to
* 				   start-of-text, there is currently no position
* 				   corresponding to end-of-text.  This limitation
* 				   can be alleviated by shaping more text than needed
* 				   and looking for unsafe-to-concat flag within text
* 				   clusters.
* 				   The #HB_GLYPH_FLAG_UNSAFE_TO_BREAK flag will
* 				   always imply this flag.
*				   To use this flag, you must enable the buffer flag
*				   @HB_BUFFER_FLAG_PRODUCE_UNSAFE_TO_CONCAT during
*				   shaping, otherwise the buffer flag will not be
*				   reliably produced.
* 				   Since: 4.0.0
* @HB_GLYPH_FLAG_SAFE_TO_INSERT_TATWEEL: In scripts that use elongation (Arabic,
Mongolian, Syriac, etc.), this flag signifies
that it is safe to insert a U+0640 TATWEEL
character before this cluster for elongation.
This flag does not determine the
script-specific elongation places, but only
when it is safe to do the elongation without
interrupting text shaping.
Since: 5.1.0
* @HB_GLYPH_FLAG_DEFINED: All the currently defined flags.
*
* Flags for #hb_glyph_info_t.
*
* Since: 1.5.0
*/
hb_glyph_flags_t :: enum s32 {
    UNSAFE_TO_BREAK        :: 1;
    UNSAFE_TO_CONCAT       :: 2;
    SAFE_TO_INSERT_TATWEEL :: 4;

    DEFINED                :: 7;

    HB_GLYPH_FLAG_UNSAFE_TO_BREAK        :: UNSAFE_TO_BREAK;
    HB_GLYPH_FLAG_UNSAFE_TO_CONCAT       :: UNSAFE_TO_CONCAT;
    HB_GLYPH_FLAG_SAFE_TO_INSERT_TATWEEL :: SAFE_TO_INSERT_TATWEEL;

    HB_GLYPH_FLAG_DEFINED                :: DEFINED;
}

hb_glyph_info_get_glyph_flags :: (info: *hb_glyph_info_t) -> hb_glyph_flags_t #foreign harfbuzz_freetype;

/**
* hb_glyph_position_t:
* @x_advance: how much the line advances after drawing this glyph when setting
*             text in horizontal direction.
* @y_advance: how much the line advances after drawing this glyph when setting
*             text in vertical direction.
* @x_offset: how much the glyph moves on the X-axis before drawing it, this
*            should not affect how much the line advances.
* @y_offset: how much the glyph moves on the Y-axis before drawing it, this
*            should not affect how much the line advances.
*
* The #hb_glyph_position_t is the structure that holds the positions of the
* glyph in both horizontal and vertical directions. All positions in
* #hb_glyph_position_t are relative to the current point.
*
*/
hb_glyph_position_t :: struct {
    x_advance: hb_position_t;
    y_advance: hb_position_t;
    x_offset:  hb_position_t;
    y_offset:  hb_position_t;

    /*< private >*/
    var:       hb_var_int_t;
}

/**
* hb_segment_properties_t:
* @direction: the #hb_direction_t of the buffer, see hb_buffer_set_direction().
* @script: the #hb_script_t of the buffer, see hb_buffer_set_script().
* @language: the #hb_language_t of the buffer, see hb_buffer_set_language().
*
* The structure that holds various text properties of an #hb_buffer_t. Can be
* set and retrieved using hb_buffer_set_segment_properties() and
* hb_buffer_get_segment_properties(), respectively.
*/
hb_segment_properties_t :: struct {
    direction: hb_direction_t;
    script:    hb_script_t;
    language:  hb_language_t;

    /*< private >*/
    reserved1: *void;
    reserved2: *void;
}

hb_segment_properties_equal :: (a: *hb_segment_properties_t, b: *hb_segment_properties_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_segment_properties_hash :: (p: *hb_segment_properties_t) -> u32 #foreign harfbuzz_freetype;

hb_segment_properties_overlay :: (p: *hb_segment_properties_t, src: *hb_segment_properties_t) -> void #foreign harfbuzz_freetype;

hb_buffer_t :: struct {}

hb_buffer_create :: () -> *hb_buffer_t #foreign harfbuzz_freetype;

hb_buffer_create_similar :: (src: *hb_buffer_t) -> *hb_buffer_t #foreign harfbuzz_freetype;

hb_buffer_reset :: (buffer: *hb_buffer_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_empty :: () -> *hb_buffer_t #foreign harfbuzz_freetype;

hb_buffer_reference :: (buffer: *hb_buffer_t) -> *hb_buffer_t #foreign harfbuzz_freetype;

hb_buffer_destroy :: (buffer: *hb_buffer_t) -> void #foreign harfbuzz_freetype;

hb_buffer_set_user_data :: (buffer: *hb_buffer_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_buffer_get_user_data :: (buffer: *hb_buffer_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

/**
* hb_buffer_content_type_t:
* @HB_BUFFER_CONTENT_TYPE_INVALID: Initial value for new buffer.
* @HB_BUFFER_CONTENT_TYPE_UNICODE: The buffer contains input characters (before shaping).
* @HB_BUFFER_CONTENT_TYPE_GLYPHS: The buffer contains output glyphs (after shaping).
*
* The type of #hb_buffer_t contents.
*/
hb_buffer_content_type_t :: enum s32 {
    INVALID :: 0;
    UNICODE :: 1;
    GLYPHS  :: 2;

    HB_BUFFER_CONTENT_TYPE_INVALID :: INVALID;
    HB_BUFFER_CONTENT_TYPE_UNICODE :: UNICODE;
    HB_BUFFER_CONTENT_TYPE_GLYPHS  :: GLYPHS;
}

hb_buffer_set_content_type :: (buffer: *hb_buffer_t, content_type: hb_buffer_content_type_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_content_type :: (buffer: *hb_buffer_t) -> hb_buffer_content_type_t #foreign harfbuzz_freetype;

hb_buffer_set_unicode_funcs :: (buffer: *hb_buffer_t, unicode_funcs: *hb_unicode_funcs_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_unicode_funcs :: (buffer: *hb_buffer_t) -> *hb_unicode_funcs_t #foreign harfbuzz_freetype;

hb_buffer_set_direction :: (buffer: *hb_buffer_t, direction: hb_direction_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_direction :: (buffer: *hb_buffer_t) -> hb_direction_t #foreign harfbuzz_freetype;

hb_buffer_set_script :: (buffer: *hb_buffer_t, script: hb_script_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_script :: (buffer: *hb_buffer_t) -> hb_script_t #foreign harfbuzz_freetype;

hb_buffer_set_language :: (buffer: *hb_buffer_t, language: hb_language_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_language :: (buffer: *hb_buffer_t) -> hb_language_t #foreign harfbuzz_freetype;

hb_buffer_set_segment_properties :: (buffer: *hb_buffer_t, props: *hb_segment_properties_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_segment_properties :: (buffer: *hb_buffer_t, props: *hb_segment_properties_t) -> void #foreign harfbuzz_freetype;

hb_buffer_guess_segment_properties :: (buffer: *hb_buffer_t) -> void #foreign harfbuzz_freetype;

/**
* hb_buffer_flags_t:
* @HB_BUFFER_FLAG_DEFAULT: the default buffer flag.
* @HB_BUFFER_FLAG_BOT: flag indicating that special handling of the beginning
*                      of text paragraph can be applied to this buffer. Should usually
*                      be set, unless you are passing to the buffer only part
*                      of the text without the full context.
* @HB_BUFFER_FLAG_EOT: flag indicating that special handling of the end of text
*                      paragraph can be applied to this buffer, similar to
*                      @HB_BUFFER_FLAG_BOT.
* @HB_BUFFER_FLAG_PRESERVE_DEFAULT_IGNORABLES:
*                      flag indication that character with Default_Ignorable
*                      Unicode property should use the corresponding glyph
*                      from the font, instead of hiding them (done by
*                      replacing them with the space glyph and zeroing the
*                      advance width.)  This flag takes precedence over
*                      @HB_BUFFER_FLAG_REMOVE_DEFAULT_IGNORABLES.
* @HB_BUFFER_FLAG_REMOVE_DEFAULT_IGNORABLES:
*                      flag indication that character with Default_Ignorable
*                      Unicode property should be removed from glyph string
*                      instead of hiding them (done by replacing them with the
*                      space glyph and zeroing the advance width.)
*                      @HB_BUFFER_FLAG_PRESERVE_DEFAULT_IGNORABLES takes
*                      precedence over this flag. Since: 1.8.0
* @HB_BUFFER_FLAG_DO_NOT_INSERT_DOTTED_CIRCLE:
*                      flag indicating that a dotted circle should
*                      not be inserted in the rendering of incorrect
*                      character sequences (such at <0905 093E>). Since: 2.4.0
* @HB_BUFFER_FLAG_VERIFY:
*                      flag indicating that the hb_shape() call and its variants
*                      should perform various verification processes on the results
*                      of the shaping operation on the buffer.  If the verification
*                      fails, then either a buffer message is sent, if a message
*                      handler is installed on the buffer, or a message is written
*                      to standard error.  In either case, the shaping result might
*                      be modified to show the failed output. Since: 3.4.0
* @HB_BUFFER_FLAG_PRODUCE_UNSAFE_TO_CONCAT:
*                      flag indicating that the @HB_GLYPH_FLAG_UNSAFE_TO_CONCAT
*                      glyph-flag should be produced by the shaper. By default
*                      it will not be produced since it incurs a cost. Since: 4.0.0
* @HB_BUFFER_FLAG_PRODUCE_SAFE_TO_INSERT_TATWEEL:
*                      flag indicating that the @HB_GLYPH_FLAG_SAFE_TO_INSERT_TATWEEL
*                      glyph-flag should be produced by the shaper. By default
*                      it will not be produced. Since: 5.1.0
* @HB_BUFFER_FLAG_DEFINED: All currently defined flags: Since: 4.4.0
*
* Flags for #hb_buffer_t.
*
* Since: 0.9.20
*/
hb_buffer_flags_t :: enum s32 {
    DEFAULT                        :: 0;
    BOT                            :: 1;
    EOT                            :: 2;
    PRESERVE_DEFAULT_IGNORABLES    :: 4;
    REMOVE_DEFAULT_IGNORABLES      :: 8;
    DO_NOT_INSERT_DOTTED_CIRCLE    :: 16;
    VERIFY                         :: 32;
    PRODUCE_UNSAFE_TO_CONCAT       :: 64;
    PRODUCE_SAFE_TO_INSERT_TATWEEL :: 128;

    DEFINED                        :: 255;

    HB_BUFFER_FLAG_DEFAULT                        :: DEFAULT;
    HB_BUFFER_FLAG_BOT                            :: BOT;
    HB_BUFFER_FLAG_EOT                            :: EOT;
    HB_BUFFER_FLAG_PRESERVE_DEFAULT_IGNORABLES    :: PRESERVE_DEFAULT_IGNORABLES;
    HB_BUFFER_FLAG_REMOVE_DEFAULT_IGNORABLES      :: REMOVE_DEFAULT_IGNORABLES;
    HB_BUFFER_FLAG_DO_NOT_INSERT_DOTTED_CIRCLE    :: DO_NOT_INSERT_DOTTED_CIRCLE;
    HB_BUFFER_FLAG_VERIFY                         :: VERIFY;
    HB_BUFFER_FLAG_PRODUCE_UNSAFE_TO_CONCAT       :: PRODUCE_UNSAFE_TO_CONCAT;
    HB_BUFFER_FLAG_PRODUCE_SAFE_TO_INSERT_TATWEEL :: PRODUCE_SAFE_TO_INSERT_TATWEEL;

    HB_BUFFER_FLAG_DEFINED                        :: DEFINED;
}

hb_buffer_set_flags :: (buffer: *hb_buffer_t, flags: hb_buffer_flags_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_flags :: (buffer: *hb_buffer_t) -> hb_buffer_flags_t #foreign harfbuzz_freetype;

/**
* hb_buffer_cluster_level_t:
* @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES: Return cluster values grouped by graphemes into
*   monotone order.
* @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_CHARACTERS: Return cluster values grouped into monotone order.
* @HB_BUFFER_CLUSTER_LEVEL_CHARACTERS: Don't group cluster values.
* @HB_BUFFER_CLUSTER_LEVEL_DEFAULT: Default cluster level,
*   equal to @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES.
*
* Data type for holding HarfBuzz's clustering behavior options. The cluster level
* dictates one aspect of how HarfBuzz will treat non-base characters
* during shaping.
*
* In @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES, non-base
* characters are merged into the cluster of the base character that precedes them.
*
* In @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_CHARACTERS, non-base characters are initially
* assigned their own cluster values, which are not merged into preceding base
* clusters. This allows HarfBuzz to perform additional operations like reorder
* sequences of adjacent marks.
*
* @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES is the default, because it maintains
* backward compatibility with older versions of HarfBuzz. New client programs that
* do not need to maintain such backward compatibility are recommended to use
* @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_CHARACTERS instead of the default.
*
* Since: 0.9.42
*/
hb_buffer_cluster_level_t :: enum s32 {
    MONOTONE_GRAPHEMES  :: 0;
    MONOTONE_CHARACTERS :: 1;
    CHARACTERS          :: 2;
    DEFAULT             :: 0;

    HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES  :: MONOTONE_GRAPHEMES;
    HB_BUFFER_CLUSTER_LEVEL_MONOTONE_CHARACTERS :: MONOTONE_CHARACTERS;
    HB_BUFFER_CLUSTER_LEVEL_CHARACTERS          :: CHARACTERS;
    HB_BUFFER_CLUSTER_LEVEL_DEFAULT             :: DEFAULT;
}

hb_buffer_set_cluster_level :: (buffer: *hb_buffer_t, cluster_level: hb_buffer_cluster_level_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_cluster_level :: (buffer: *hb_buffer_t) -> hb_buffer_cluster_level_t #foreign harfbuzz_freetype;

hb_buffer_set_replacement_codepoint :: (buffer: *hb_buffer_t, replacement: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_replacement_codepoint :: (buffer: *hb_buffer_t) -> hb_codepoint_t #foreign harfbuzz_freetype;

hb_buffer_set_invisible_glyph :: (buffer: *hb_buffer_t, invisible: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_invisible_glyph :: (buffer: *hb_buffer_t) -> hb_codepoint_t #foreign harfbuzz_freetype;

hb_buffer_set_not_found_glyph :: (buffer: *hb_buffer_t, not_found: hb_codepoint_t) -> void #foreign harfbuzz_freetype;

hb_buffer_get_not_found_glyph :: (buffer: *hb_buffer_t) -> hb_codepoint_t #foreign harfbuzz_freetype;

/*
* Content API.
*/
hb_buffer_clear_contents :: (buffer: *hb_buffer_t) -> void #foreign harfbuzz_freetype;

hb_buffer_pre_allocate :: (buffer: *hb_buffer_t, size: u32) -> hb_bool_t #foreign harfbuzz_freetype;

hb_buffer_allocation_successful :: (buffer: *hb_buffer_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_buffer_reverse :: (buffer: *hb_buffer_t) -> void #foreign harfbuzz_freetype;

hb_buffer_reverse_range :: (buffer: *hb_buffer_t, start: u32, end: u32) -> void #foreign harfbuzz_freetype;

hb_buffer_reverse_clusters :: (buffer: *hb_buffer_t) -> void #foreign harfbuzz_freetype;

/* Filling the buffer in */
hb_buffer_add :: (buffer: *hb_buffer_t, codepoint: hb_codepoint_t, cluster: u32) -> void #foreign harfbuzz_freetype;

hb_buffer_add_utf8 :: (buffer: *hb_buffer_t, text: *u8, text_length: s32, item_offset: u32, item_length: s32) -> void #foreign harfbuzz_freetype;

hb_buffer_add_utf16 :: (buffer: *hb_buffer_t, text: *u16, text_length: s32, item_offset: u32, item_length: s32) -> void #foreign harfbuzz_freetype;

hb_buffer_add_utf32 :: (buffer: *hb_buffer_t, text: *u32, text_length: s32, item_offset: u32, item_length: s32) -> void #foreign harfbuzz_freetype;

hb_buffer_add_latin1 :: (buffer: *hb_buffer_t, text: *u8, text_length: s32, item_offset: u32, item_length: s32) -> void #foreign harfbuzz_freetype;

hb_buffer_add_codepoints :: (buffer: *hb_buffer_t, text: *hb_codepoint_t, text_length: s32, item_offset: u32, item_length: s32) -> void #foreign harfbuzz_freetype;

hb_buffer_append :: (buffer: *hb_buffer_t, source: *hb_buffer_t, start: u32, end: u32) -> void #foreign harfbuzz_freetype;

hb_buffer_set_length :: (buffer: *hb_buffer_t, length: u32) -> hb_bool_t #foreign harfbuzz_freetype;

hb_buffer_get_length :: (buffer: *hb_buffer_t) -> u32 #foreign harfbuzz_freetype;

/* Getting glyphs out of the buffer */
hb_buffer_get_glyph_infos :: (buffer: *hb_buffer_t, length: *u32) -> *hb_glyph_info_t #foreign harfbuzz_freetype;

hb_buffer_get_glyph_positions :: (buffer: *hb_buffer_t, length: *u32) -> *hb_glyph_position_t #foreign harfbuzz_freetype;

hb_buffer_has_positions :: (buffer: *hb_buffer_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_buffer_normalize_glyphs :: (buffer: *hb_buffer_t) -> void #foreign harfbuzz_freetype;

/**
* hb_buffer_serialize_flags_t:
* @HB_BUFFER_SERIALIZE_FLAG_DEFAULT: serialize glyph names, clusters and positions.
* @HB_BUFFER_SERIALIZE_FLAG_NO_CLUSTERS: do not serialize glyph cluster.
* @HB_BUFFER_SERIALIZE_FLAG_NO_POSITIONS: do not serialize glyph position information.
* @HB_BUFFER_SERIALIZE_FLAG_NO_GLYPH_NAMES: do no serialize glyph name.
* @HB_BUFFER_SERIALIZE_FLAG_GLYPH_EXTENTS: serialize glyph extents.
* @HB_BUFFER_SERIALIZE_FLAG_GLYPH_FLAGS: serialize glyph flags. Since: 1.5.0
* @HB_BUFFER_SERIALIZE_FLAG_NO_ADVANCES: do not serialize glyph advances,
*  glyph offsets will reflect absolute glyph positions. Since: 1.8.0
* @HB_BUFFER_SERIALIZE_FLAG_DEFINED: All currently defined flags. Since: 4.4.0
*
* Flags that control what glyph information are serialized in hb_buffer_serialize_glyphs().
*
* Since: 0.9.20
*/
hb_buffer_serialize_flags_t :: enum s32 {
    DEFAULT        :: 0;
    NO_CLUSTERS    :: 1;
    NO_POSITIONS   :: 2;
    NO_GLYPH_NAMES :: 4;
    GLYPH_EXTENTS  :: 8;
    GLYPH_FLAGS    :: 16;
    NO_ADVANCES    :: 32;

    DEFINED        :: 63;

    HB_BUFFER_SERIALIZE_FLAG_DEFAULT        :: DEFAULT;
    HB_BUFFER_SERIALIZE_FLAG_NO_CLUSTERS    :: NO_CLUSTERS;
    HB_BUFFER_SERIALIZE_FLAG_NO_POSITIONS   :: NO_POSITIONS;
    HB_BUFFER_SERIALIZE_FLAG_NO_GLYPH_NAMES :: NO_GLYPH_NAMES;
    HB_BUFFER_SERIALIZE_FLAG_GLYPH_EXTENTS  :: GLYPH_EXTENTS;
    HB_BUFFER_SERIALIZE_FLAG_GLYPH_FLAGS    :: GLYPH_FLAGS;
    HB_BUFFER_SERIALIZE_FLAG_NO_ADVANCES    :: NO_ADVANCES;

    HB_BUFFER_SERIALIZE_FLAG_DEFINED        :: DEFINED;
}

/**
* hb_buffer_serialize_format_t:
* @HB_BUFFER_SERIALIZE_FORMAT_TEXT: a human-readable, plain text format.
* @HB_BUFFER_SERIALIZE_FORMAT_JSON: a machine-readable JSON format.
* @HB_BUFFER_SERIALIZE_FORMAT_INVALID: invalid format.
*
* The buffer serialization and de-serialization format used in
* hb_buffer_serialize_glyphs() and hb_buffer_deserialize_glyphs().
*
* Since: 0.9.2
*/
hb_buffer_serialize_format_t :: enum s32 {
    TEXT    :: 1413830740;
    JSON    :: 1246973774;
    INVALID :: 0;

    HB_BUFFER_SERIALIZE_FORMAT_TEXT    :: TEXT;
    HB_BUFFER_SERIALIZE_FORMAT_JSON    :: JSON;
    HB_BUFFER_SERIALIZE_FORMAT_INVALID :: INVALID;
}

hb_buffer_serialize_format_from_string :: (str: *u8, len: s32) -> hb_buffer_serialize_format_t #foreign harfbuzz_freetype;

hb_buffer_serialize_format_to_string :: (format: hb_buffer_serialize_format_t) -> *u8 #foreign harfbuzz_freetype;

hb_buffer_serialize_list_formats :: () -> **u8 #foreign harfbuzz_freetype;

hb_buffer_serialize_glyphs :: (buffer: *hb_buffer_t, start: u32, end: u32, buf: *u8, buf_size: u32, buf_consumed: *u32, font: *hb_font_t, format: hb_buffer_serialize_format_t, flags: hb_buffer_serialize_flags_t) -> u32 #foreign harfbuzz_freetype;

hb_buffer_serialize_unicode :: (buffer: *hb_buffer_t, start: u32, end: u32, buf: *u8, buf_size: u32, buf_consumed: *u32, format: hb_buffer_serialize_format_t, flags: hb_buffer_serialize_flags_t) -> u32 #foreign harfbuzz_freetype;

hb_buffer_serialize :: (buffer: *hb_buffer_t, start: u32, end: u32, buf: *u8, buf_size: u32, buf_consumed: *u32, font: *hb_font_t, format: hb_buffer_serialize_format_t, flags: hb_buffer_serialize_flags_t) -> u32 #foreign harfbuzz_freetype;

hb_buffer_deserialize_glyphs :: (buffer: *hb_buffer_t, buf: *u8, buf_len: s32, end_ptr: **u8, font: *hb_font_t, format: hb_buffer_serialize_format_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_buffer_deserialize_unicode :: (buffer: *hb_buffer_t, buf: *u8, buf_len: s32, end_ptr: **u8, format: hb_buffer_serialize_format_t) -> hb_bool_t #foreign harfbuzz_freetype;

/**
* hb_buffer_diff_flags_t:
* @HB_BUFFER_DIFF_FLAG_EQUAL: equal buffers.
* @HB_BUFFER_DIFF_FLAG_CONTENT_TYPE_MISMATCH: buffers with different
*     #hb_buffer_content_type_t.
* @HB_BUFFER_DIFF_FLAG_LENGTH_MISMATCH: buffers with differing length.
* @HB_BUFFER_DIFF_FLAG_NOTDEF_PRESENT: `.notdef` glyph is present in the
*     reference buffer.
* @HB_BUFFER_DIFF_FLAG_DOTTED_CIRCLE_PRESENT: dotted circle glyph is present
*     in the reference buffer.
* @HB_BUFFER_DIFF_FLAG_CODEPOINT_MISMATCH: difference in #hb_glyph_info_t.codepoint
* @HB_BUFFER_DIFF_FLAG_CLUSTER_MISMATCH: difference in #hb_glyph_info_t.cluster
* @HB_BUFFER_DIFF_FLAG_GLYPH_FLAGS_MISMATCH: difference in #hb_glyph_flags_t.
* @HB_BUFFER_DIFF_FLAG_POSITION_MISMATCH: difference in #hb_glyph_position_t.
*
* Flags from comparing two #hb_buffer_t's.
*
* Buffer with different #hb_buffer_content_type_t cannot be meaningfully
* compared in any further detail.
*
* For buffers with differing length, the per-glyph comparison is not
* attempted, though we do still scan reference buffer for dotted circle and
* `.notdef` glyphs.
*
* If the buffers have the same length, we compare them glyph-by-glyph and
* report which aspect(s) of the glyph info/position are different.
*
* Since: 1.5.0
*/
hb_buffer_diff_flags_t :: enum s32 {
    EQUAL                 :: 0;

    CONTENT_TYPE_MISMATCH :: 1;

    LENGTH_MISMATCH       :: 2;

    NOTDEF_PRESENT        :: 4;
    DOTTED_CIRCLE_PRESENT :: 8;

    CODEPOINT_MISMATCH    :: 16;
    CLUSTER_MISMATCH      :: 32;
    GLYPH_FLAGS_MISMATCH  :: 64;
    POSITION_MISMATCH     :: 128;

    HB_BUFFER_DIFF_FLAG_EQUAL                 :: EQUAL;

    HB_BUFFER_DIFF_FLAG_CONTENT_TYPE_MISMATCH :: CONTENT_TYPE_MISMATCH;

    HB_BUFFER_DIFF_FLAG_LENGTH_MISMATCH       :: LENGTH_MISMATCH;

    HB_BUFFER_DIFF_FLAG_NOTDEF_PRESENT        :: NOTDEF_PRESENT;
    HB_BUFFER_DIFF_FLAG_DOTTED_CIRCLE_PRESENT :: DOTTED_CIRCLE_PRESENT;

    HB_BUFFER_DIFF_FLAG_CODEPOINT_MISMATCH    :: CODEPOINT_MISMATCH;
    HB_BUFFER_DIFF_FLAG_CLUSTER_MISMATCH      :: CLUSTER_MISMATCH;
    HB_BUFFER_DIFF_FLAG_GLYPH_FLAGS_MISMATCH  :: GLYPH_FLAGS_MISMATCH;
    HB_BUFFER_DIFF_FLAG_POSITION_MISMATCH     :: POSITION_MISMATCH;
}

/* Compare the contents of two buffers, report types of differences. */
hb_buffer_diff :: (buffer: *hb_buffer_t, reference: *hb_buffer_t, dottedcircle_glyph: hb_codepoint_t, position_fuzz: u32) -> hb_buffer_diff_flags_t #foreign harfbuzz_freetype;

/**
* hb_buffer_message_func_t:
* @buffer: An #hb_buffer_t to work upon
* @font: The #hb_font_t the @buffer is shaped with
* @message: `NULL`-terminated message passed to the function
* @user_data: User data pointer passed by the caller
*
* A callback method for #hb_buffer_t. The method gets called with the
* #hb_buffer_t it was set on, the #hb_font_t the buffer is shaped with and a
* message describing what step of the shaping process will be performed.
* Returning `false` from this method will skip this shaping step and move to
* the next one.
*
* Return value: `true` to perform the shaping step, `false` to skip it.
*
* Since: 1.1.3
*/
hb_buffer_message_func_t :: #type (buffer: *hb_buffer_t, font: *hb_font_t, message: *u8, user_data: *void) -> hb_bool_t #c_call;

hb_buffer_set_message_func :: (buffer: *hb_buffer_t, func: hb_buffer_message_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_font_get_glyph_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @unicode: The Unicode code point to query
* @variation_selector: The  variation-selector code point to query
* @glyph: (out): The glyph ID retrieved
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the glyph ID for a specified Unicode code point
* font, with an optional variation selector.
*
* Return value: `true` if data found, `false` otherwise
* Deprecated: 1.2.3
*
**/
hb_font_get_glyph_func_t :: #type (font: *hb_font_t, font_data: *void, unicode: hb_codepoint_t, variation_selector: hb_codepoint_t, glyph: *hb_codepoint_t, user_data: *void) -> hb_bool_t #c_call;

hb_font_funcs_set_glyph_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_eastasian_width_func_t:
* @ufuncs: A Unicode-functions structure
* @unicode: The code point to query
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_unicode_funcs_t structure.
*
* Deprecated: 2.0.0
*/
hb_unicode_eastasian_width_func_t :: #type (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t, user_data: *void) -> u32 #c_call;

/**
* hb_unicode_funcs_set_eastasian_width_func:
* @ufuncs: a Unicode-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_eastasian_width_func_t.
*
* Since: 0.9.2
* Deprecated: 2.0.0
**/
hb_unicode_funcs_set_eastasian_width_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_eastasian_width_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

/**
* hb_unicode_eastasian_width:
* @ufuncs: a Unicode-function structure
* @unicode: The code point to query
*
* Don't use. Not used by HarfBuzz.
*
* Since: 0.9.2
* Deprecated: 2.0.0
**/
hb_unicode_eastasian_width :: (ufuncs: *hb_unicode_funcs_t, unicode: hb_codepoint_t) -> u32 #foreign harfbuzz_freetype;

/**
* hb_unicode_decompose_compatibility_func_t:
* @ufuncs: a Unicode function structure
* @u: codepoint to decompose
* @decomposed: address of codepoint array (of length #HB_UNICODE_MAX_DECOMPOSITION_LEN) to write decomposition into
* @user_data: user data pointer as passed to hb_unicode_funcs_set_decompose_compatibility_func()
*
* Fully decompose @u to its Unicode compatibility decomposition. The codepoints of the decomposition will be written to @decomposed.
* The complete length of the decomposition will be returned.
*
* If @u has no compatibility decomposition, zero should be returned.
*
* The Unicode standard guarantees that a buffer of length #HB_UNICODE_MAX_DECOMPOSITION_LEN codepoints will always be sufficient for any
* compatibility decomposition plus an terminating value of 0.  Consequently, @decompose must be allocated by the caller to be at least this length.  Implementations
* of this function type must ensure that they do not write past the provided array.
*
* Return value: number of codepoints in the full compatibility decomposition of @u, or 0 if no decomposition available.
*
* Deprecated: 2.0.0
*/
hb_unicode_decompose_compatibility_func_t :: #type (ufuncs: *hb_unicode_funcs_t, u: hb_codepoint_t, decomposed: *hb_codepoint_t, user_data: *void) -> u32 #c_call;

/**
* hb_unicode_funcs_set_decompose_compatibility_func:
* @ufuncs: A Unicode-functions structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_unicode_decompose_compatibility_func_t.
*
*
*
* Since: 0.9.2
* Deprecated: 2.0.0
**/
hb_unicode_funcs_set_decompose_compatibility_func :: (ufuncs: *hb_unicode_funcs_t, func: hb_unicode_decompose_compatibility_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

hb_unicode_decompose_compatibility :: (ufuncs: *hb_unicode_funcs_t, u: hb_codepoint_t, decomposed: *hb_codepoint_t) -> u32 #foreign harfbuzz_freetype;

/**
* hb_font_get_glyph_v_kerning_func_t:
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* This method should retrieve the kerning-adjustment value for a glyph-pair in
* the specified font, for vertical text segments.
*
**/
hb_font_get_glyph_v_kerning_func_t :: hb_font_get_glyph_kerning_func_t;

/**
* hb_font_funcs_set_glyph_v_kerning_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_v_kerning_func_t.
*
* Since: 0.9.2
* Deprecated: 2.0.0
**/
hb_font_funcs_set_glyph_v_kerning_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_v_kerning_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_v_kerning :: (font: *hb_font_t, top_glyph: hb_codepoint_t, bottom_glyph: hb_codepoint_t) -> hb_position_t #foreign harfbuzz_freetype;

/**
* hb_font_get_glyph_shape_func_t:
* @font: #hb_font_t to work upon
* @font_data: @font user data pointer
* @glyph: The glyph ID to query
* @draw_funcs: The draw functions to send the shape data to
* @draw_data: The data accompanying the draw functions
* @user_data: User data pointer passed by the caller
*
* A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
*
* Since: 4.0.0
* Deprecated: 7.0.0: Use #hb_font_draw_glyph_func_t instead
**/
hb_font_get_glyph_shape_func_t :: #type (font: *hb_font_t, font_data: *void, glyph: hb_codepoint_t, draw_funcs: *hb_draw_funcs_t, draw_data: *void, user_data: *void) -> void #c_call;

/**
* hb_font_funcs_set_glyph_shape_func:
* @ffuncs: A font-function structure
* @func: (closure user_data) (destroy destroy) (scope notified): The callback function to assign
* @user_data: Data to pass to @func
* @destroy: (nullable): The function to call when @user_data is not needed anymore
*
* Sets the implementation function for #hb_font_get_glyph_shape_func_t,
* which is the same as #hb_font_draw_glyph_func_t.
*
* Since: 4.0.0
* Deprecated: 7.0.0: Use hb_font_funcs_set_draw_glyph_func() instead
**/
hb_font_funcs_set_glyph_shape_func :: (ffuncs: *hb_font_funcs_t, func: hb_font_get_glyph_shape_func_t, user_data: *void, destroy: hb_destroy_func_t) -> void #foreign harfbuzz_freetype;

hb_font_get_glyph_shape :: (font: *hb_font_t, glyph: hb_codepoint_t, dfuncs: *hb_draw_funcs_t, draw_data: *void) -> void #foreign harfbuzz_freetype;

hb_shape :: (font: *hb_font_t, buffer: *hb_buffer_t, features: *hb_feature_t, num_features: u32) -> void #foreign harfbuzz_freetype;

hb_shape_full :: (font: *hb_font_t, buffer: *hb_buffer_t, features: *hb_feature_t, num_features: u32, shaper_list: **u8) -> hb_bool_t #foreign harfbuzz_freetype;

hb_shape_justify :: (font: *hb_font_t, buffer: *hb_buffer_t, features: *hb_feature_t, num_features: u32, shaper_list: **u8, min_target_advance: float, max_target_advance: float, advance: *float, var_tag: *hb_tag_t, var_value: *float) -> hb_bool_t #foreign harfbuzz_freetype;

hb_shape_list_shapers :: () -> **u8 #foreign harfbuzz_freetype;

hb_shape_plan_t :: struct {}

hb_shape_plan_create :: (face: *hb_face_t, props: *hb_segment_properties_t, user_features: *hb_feature_t, num_user_features: u32, shaper_list: **u8) -> *hb_shape_plan_t #foreign harfbuzz_freetype;

hb_shape_plan_create_cached :: (face: *hb_face_t, props: *hb_segment_properties_t, user_features: *hb_feature_t, num_user_features: u32, shaper_list: **u8) -> *hb_shape_plan_t #foreign harfbuzz_freetype;

hb_shape_plan_create2 :: (face: *hb_face_t, props: *hb_segment_properties_t, user_features: *hb_feature_t, num_user_features: u32, coords: *s32, num_coords: u32, shaper_list: **u8) -> *hb_shape_plan_t #foreign harfbuzz_freetype;

hb_shape_plan_create_cached2 :: (face: *hb_face_t, props: *hb_segment_properties_t, user_features: *hb_feature_t, num_user_features: u32, coords: *s32, num_coords: u32, shaper_list: **u8) -> *hb_shape_plan_t #foreign harfbuzz_freetype;

hb_shape_plan_get_empty :: () -> *hb_shape_plan_t #foreign harfbuzz_freetype;

hb_shape_plan_reference :: (shape_plan: *hb_shape_plan_t) -> *hb_shape_plan_t #foreign harfbuzz_freetype;

hb_shape_plan_destroy :: (shape_plan: *hb_shape_plan_t) -> void #foreign harfbuzz_freetype;

hb_shape_plan_set_user_data :: (shape_plan: *hb_shape_plan_t, key: *hb_user_data_key_t, data: *void, destroy: hb_destroy_func_t, replace: hb_bool_t) -> hb_bool_t #foreign harfbuzz_freetype;

hb_shape_plan_get_user_data :: (shape_plan: *hb_shape_plan_t, key: *hb_user_data_key_t) -> *void #foreign harfbuzz_freetype;

hb_shape_plan_execute :: (shape_plan: *hb_shape_plan_t, font: *hb_font_t, buffer: *hb_buffer_t, features: *hb_feature_t, num_features: u32) -> hb_bool_t #foreign harfbuzz_freetype;

hb_shape_plan_get_shaper :: (shape_plan: *hb_shape_plan_t) -> *u8 #foreign harfbuzz_freetype;

/**
* hb_style_tag_t:
* @HB_STYLE_TAG_ITALIC: Used to vary between non-italic and italic.
* A value of 0 can be interpreted as "Roman" (non-italic); a value of 1 can
* be interpreted as (fully) italic.
* @HB_STYLE_TAG_OPTICAL_SIZE: Used to vary design to suit different text sizes.
* Non-zero. Values can be interpreted as text size, in points.
* @HB_STYLE_TAG_SLANT_ANGLE: Used to vary between upright and slanted text. Values
* must be greater than -90 and less than +90. Values can be interpreted as
* the angle, in counter-clockwise degrees, of oblique slant from whatever the
* designer considers to be upright for that font design. Typical right-leaning
* Italic fonts have a negative slant angle (typically around -12)
* @HB_STYLE_TAG_SLANT_RATIO: same as @HB_STYLE_TAG_SLANT_ANGLE expression as ratio.
* Typical right-leaning Italic fonts have a positive slant ratio (typically around 0.2)
* @HB_STYLE_TAG_WIDTH: Used to vary width of text from narrower to wider.
* Non-zero. Values can be interpreted as a percentage of whatever the font
* designer considers “normal width” for that font design.
* @HB_STYLE_TAG_WEIGHT: Used to vary stroke thicknesses or other design details
* to give variation from lighter to blacker. Values can be interpreted in direct
* comparison to values for usWeightClass in the OS/2 table,
* or the CSS font-weight property.
*
* Defined by [OpenType Design-Variation Axis Tag Registry](https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg).
*
* Since: 3.0.0
**/
hb_style_tag_t :: enum s32 {
    HB_STYLE_TAG_ITALIC       :: 1769234796;
    HB_STYLE_TAG_OPTICAL_SIZE :: 1869640570;
    HB_STYLE_TAG_SLANT_ANGLE  :: 1936486004;
    HB_STYLE_TAG_SLANT_RATIO  :: 1399615092;
    HB_STYLE_TAG_WIDTH        :: 2003072104;
    HB_STYLE_TAG_WEIGHT       :: 2003265652;

    HB_STYLE_TAG_MAX_VALUE    :: 2147483647;
    _HB_STYLE_TAG_MAX_VALUE :: HB_STYLE_TAG_MAX_VALUE;
}

hb_style_get_value :: (font: *hb_font_t, style_tag: hb_style_tag_t) -> float #foreign harfbuzz_freetype;

hb_version :: (major: *u32, minor: *u32, micro: *u32) -> void #foreign harfbuzz_freetype;

hb_version_string :: () -> *u8 #foreign harfbuzz_freetype;

hb_version_atleast :: (major: u32, minor: u32, micro: u32) -> hb_bool_t #foreign harfbuzz_freetype;

/* This one creates a new hb-face for given ft-face.
* When the returned hb-face is destroyed, the destroy
* callback is called (if not NULL), with the ft-face passed
* to it.
*
* The client is responsible to make sure that ft-face is
* destroyed after hb-face is destroyed.
*
* Most often you don't want this function.  You should use either
* hb_ft_face_create_cached(), or hb_ft_face_create_referenced().
* In particular, if you are going to pass NULL as destroy, you
* probably should use (the more recent) hb_ft_face_create_referenced()
* instead.
*/
hb_ft_face_create :: (ft_face: FT_Face, destroy: hb_destroy_func_t) -> *hb_face_t #foreign harfbuzz_freetype;

/* This version is like hb_ft_face_create(), except that it caches
* the hb-face using the generic pointer of the ft-face.  This means
* that subsequent calls to this function with the same ft-face will
* return the same hb-face (correctly referenced).
*
* Client is still responsible for making sure that ft-face is destroyed
* after hb-face is.
*/
hb_ft_face_create_cached :: (ft_face: FT_Face) -> *hb_face_t #foreign harfbuzz_freetype;

/* This version is like hb_ft_face_create(), except that it calls
* FT_Reference_Face() on ft-face, as such keeping ft-face alive
* as long as the hb-face is.
*
* This is the most convenient version to use.  Use it unless you have
* very good reasons not to.
*/
hb_ft_face_create_referenced :: (ft_face: FT_Face) -> *hb_face_t #foreign harfbuzz_freetype;

/* See notes on hb_ft_face_create().  Same issues re lifecycle-management
* apply here.  Use hb_ft_font_create_referenced() if you can. */
hb_ft_font_create :: (ft_face: FT_Face, destroy: hb_destroy_func_t) -> *hb_font_t #foreign harfbuzz_freetype;

/* See notes on hb_ft_face_create_referenced() re lifecycle-management
* issues. */
hb_ft_font_create_referenced :: (ft_face: FT_Face) -> *hb_font_t #foreign harfbuzz_freetype;

hb_ft_font_get_face :: (font: *hb_font_t) -> FT_Face #foreign harfbuzz_freetype;

hb_ft_font_lock_face :: (font: *hb_font_t) -> FT_Face #foreign harfbuzz_freetype;

hb_ft_font_unlock_face :: (font: *hb_font_t) -> void #foreign harfbuzz_freetype;

hb_ft_font_set_load_flags :: (font: *hb_font_t, load_flags: s32) -> void #foreign harfbuzz_freetype;

hb_ft_font_get_load_flags :: (font: *hb_font_t) -> s32 #foreign harfbuzz_freetype;

/* Call when size or variations settings on underlying FT_Face changed,
* and you want to update the hb_font_t from it. */
hb_ft_font_changed :: (font: *hb_font_t) -> void #foreign harfbuzz_freetype;

/* Call when size or variations settings on underlying hb_font_t may have
* changed, and you want to update the FT_Face from it.  This call is fast
* if nothing changed on hb_font_t. Returns true if changed. */
hb_ft_hb_font_changed :: (font: *hb_font_t) -> hb_bool_t #foreign harfbuzz_freetype;

/* Makes an hb_font_t use FreeType internally to implement font functions.
* Note: this internally creates an FT_Face.  Use it when you create your
* hb_face_t using hb_face_create(). */
hb_ft_font_set_funcs :: (font: *hb_font_t) -> void #foreign harfbuzz_freetype;

#scope_file

#import "Basic"; // For assert

harfbuzz_freetype :: #library "./windows/harfbuzz_freetype";

#run {
    {
        instance: _hb_var_int_t;
        assert(((cast(*void)(*instance._u32)) - cast(*void)(*instance)) == 0, "_hb_var_int_t._u32 has unexpected offset % instead of 0", ((cast(*void)(*instance._u32)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_int_t._u32)) == 4, "_hb_var_int_t._u32 has unexpected size % instead of 4", size_of(type_of(_hb_var_int_t._u32)));
        assert(((cast(*void)(*instance.i32)) - cast(*void)(*instance)) == 0, "_hb_var_int_t.i32 has unexpected offset % instead of 0", ((cast(*void)(*instance.i32)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_int_t.i32)) == 4, "_hb_var_int_t.i32 has unexpected size % instead of 4", size_of(type_of(_hb_var_int_t.i32)));
        assert(((cast(*void)(*instance._u16)) - cast(*void)(*instance)) == 0, "_hb_var_int_t._u16 has unexpected offset % instead of 0", ((cast(*void)(*instance._u16)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_int_t._u16)) == 4, "_hb_var_int_t._u16 has unexpected size % instead of 4", size_of(type_of(_hb_var_int_t._u16)));
        assert(((cast(*void)(*instance.i16)) - cast(*void)(*instance)) == 0, "_hb_var_int_t.i16 has unexpected offset % instead of 0", ((cast(*void)(*instance.i16)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_int_t.i16)) == 4, "_hb_var_int_t.i16 has unexpected size % instead of 4", size_of(type_of(_hb_var_int_t.i16)));
        assert(((cast(*void)(*instance._u8)) - cast(*void)(*instance)) == 0, "_hb_var_int_t._u8 has unexpected offset % instead of 0", ((cast(*void)(*instance._u8)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_int_t._u8)) == 4, "_hb_var_int_t._u8 has unexpected size % instead of 4", size_of(type_of(_hb_var_int_t._u8)));
        assert(((cast(*void)(*instance.i8)) - cast(*void)(*instance)) == 0, "_hb_var_int_t.i8 has unexpected offset % instead of 0", ((cast(*void)(*instance.i8)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_int_t.i8)) == 4, "_hb_var_int_t.i8 has unexpected size % instead of 4", size_of(type_of(_hb_var_int_t.i8)));
        assert(size_of(_hb_var_int_t) == 4, "_hb_var_int_t has size % instead of 4", size_of(_hb_var_int_t));
    }

    {
        instance: _hb_var_num_t;
        assert(((cast(*void)(*instance.f)) - cast(*void)(*instance)) == 0, "_hb_var_num_t.f has unexpected offset % instead of 0", ((cast(*void)(*instance.f)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_num_t.f)) == 4, "_hb_var_num_t.f has unexpected size % instead of 4", size_of(type_of(_hb_var_num_t.f)));
        assert(((cast(*void)(*instance._u32)) - cast(*void)(*instance)) == 0, "_hb_var_num_t._u32 has unexpected offset % instead of 0", ((cast(*void)(*instance._u32)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_num_t._u32)) == 4, "_hb_var_num_t._u32 has unexpected size % instead of 4", size_of(type_of(_hb_var_num_t._u32)));
        assert(((cast(*void)(*instance.i32)) - cast(*void)(*instance)) == 0, "_hb_var_num_t.i32 has unexpected offset % instead of 0", ((cast(*void)(*instance.i32)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_num_t.i32)) == 4, "_hb_var_num_t.i32 has unexpected size % instead of 4", size_of(type_of(_hb_var_num_t.i32)));
        assert(((cast(*void)(*instance._u16)) - cast(*void)(*instance)) == 0, "_hb_var_num_t._u16 has unexpected offset % instead of 0", ((cast(*void)(*instance._u16)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_num_t._u16)) == 4, "_hb_var_num_t._u16 has unexpected size % instead of 4", size_of(type_of(_hb_var_num_t._u16)));
        assert(((cast(*void)(*instance.i16)) - cast(*void)(*instance)) == 0, "_hb_var_num_t.i16 has unexpected offset % instead of 0", ((cast(*void)(*instance.i16)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_num_t.i16)) == 4, "_hb_var_num_t.i16 has unexpected size % instead of 4", size_of(type_of(_hb_var_num_t.i16)));
        assert(((cast(*void)(*instance._u8)) - cast(*void)(*instance)) == 0, "_hb_var_num_t._u8 has unexpected offset % instead of 0", ((cast(*void)(*instance._u8)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_num_t._u8)) == 4, "_hb_var_num_t._u8 has unexpected size % instead of 4", size_of(type_of(_hb_var_num_t._u8)));
        assert(((cast(*void)(*instance.i8)) - cast(*void)(*instance)) == 0, "_hb_var_num_t.i8 has unexpected offset % instead of 0", ((cast(*void)(*instance.i8)) - cast(*void)(*instance)));
        assert(size_of(type_of(_hb_var_num_t.i8)) == 4, "_hb_var_num_t.i8 has unexpected size % instead of 4", size_of(type_of(_hb_var_num_t.i8)));
        assert(size_of(_hb_var_num_t) == 4, "_hb_var_num_t has size % instead of 4", size_of(_hb_var_num_t));
    }

    {
        instance: hb_user_data_key_t;
        assert(((cast(*void)(*instance.unused)) - cast(*void)(*instance)) == 0, "hb_user_data_key_t.unused has unexpected offset % instead of 0", ((cast(*void)(*instance.unused)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_user_data_key_t.unused)) == 1, "hb_user_data_key_t.unused has unexpected size % instead of 1", size_of(type_of(hb_user_data_key_t.unused)));
        assert(size_of(hb_user_data_key_t) == 1, "hb_user_data_key_t has size % instead of 1", size_of(hb_user_data_key_t));
    }

    {
        instance: hb_feature_t;
        assert(((cast(*void)(*instance.tag)) - cast(*void)(*instance)) == 0, "hb_feature_t.tag has unexpected offset % instead of 0", ((cast(*void)(*instance.tag)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_feature_t.tag)) == 4, "hb_feature_t.tag has unexpected size % instead of 4", size_of(type_of(hb_feature_t.tag)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 4, "hb_feature_t.value has unexpected offset % instead of 4", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_feature_t.value)) == 4, "hb_feature_t.value has unexpected size % instead of 4", size_of(type_of(hb_feature_t.value)));
        assert(((cast(*void)(*instance.start)) - cast(*void)(*instance)) == 8, "hb_feature_t.start has unexpected offset % instead of 8", ((cast(*void)(*instance.start)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_feature_t.start)) == 4, "hb_feature_t.start has unexpected size % instead of 4", size_of(type_of(hb_feature_t.start)));
        assert(((cast(*void)(*instance.end)) - cast(*void)(*instance)) == 12, "hb_feature_t.end has unexpected offset % instead of 12", ((cast(*void)(*instance.end)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_feature_t.end)) == 4, "hb_feature_t.end has unexpected size % instead of 4", size_of(type_of(hb_feature_t.end)));
        assert(size_of(hb_feature_t) == 16, "hb_feature_t has size % instead of 16", size_of(hb_feature_t));
    }

    {
        instance: hb_variation_t;
        assert(((cast(*void)(*instance.tag)) - cast(*void)(*instance)) == 0, "hb_variation_t.tag has unexpected offset % instead of 0", ((cast(*void)(*instance.tag)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_variation_t.tag)) == 4, "hb_variation_t.tag has unexpected size % instead of 4", size_of(type_of(hb_variation_t.tag)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 4, "hb_variation_t.value has unexpected offset % instead of 4", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_variation_t.value)) == 4, "hb_variation_t.value has unexpected size % instead of 4", size_of(type_of(hb_variation_t.value)));
        assert(size_of(hb_variation_t) == 8, "hb_variation_t has size % instead of 8", size_of(hb_variation_t));
    }

    {
        instance: hb_glyph_extents_t;
        assert(((cast(*void)(*instance.x_bearing)) - cast(*void)(*instance)) == 0, "hb_glyph_extents_t.x_bearing has unexpected offset % instead of 0", ((cast(*void)(*instance.x_bearing)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_extents_t.x_bearing)) == 4, "hb_glyph_extents_t.x_bearing has unexpected size % instead of 4", size_of(type_of(hb_glyph_extents_t.x_bearing)));
        assert(((cast(*void)(*instance.y_bearing)) - cast(*void)(*instance)) == 4, "hb_glyph_extents_t.y_bearing has unexpected offset % instead of 4", ((cast(*void)(*instance.y_bearing)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_extents_t.y_bearing)) == 4, "hb_glyph_extents_t.y_bearing has unexpected size % instead of 4", size_of(type_of(hb_glyph_extents_t.y_bearing)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 8, "hb_glyph_extents_t.width has unexpected offset % instead of 8", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_extents_t.width)) == 4, "hb_glyph_extents_t.width has unexpected size % instead of 4", size_of(type_of(hb_glyph_extents_t.width)));
        assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 12, "hb_glyph_extents_t.height has unexpected offset % instead of 12", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_extents_t.height)) == 4, "hb_glyph_extents_t.height has unexpected size % instead of 4", size_of(type_of(hb_glyph_extents_t.height)));
        assert(size_of(hb_glyph_extents_t) == 16, "hb_glyph_extents_t has size % instead of 16", size_of(hb_glyph_extents_t));
    }

    {
        instance: hb_draw_state_t;
        assert(((cast(*void)(*instance.path_open)) - cast(*void)(*instance)) == 0, "hb_draw_state_t.path_open has unexpected offset % instead of 0", ((cast(*void)(*instance.path_open)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.path_open)) == 4, "hb_draw_state_t.path_open has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.path_open)));
        assert(((cast(*void)(*instance.path_start_x)) - cast(*void)(*instance)) == 4, "hb_draw_state_t.path_start_x has unexpected offset % instead of 4", ((cast(*void)(*instance.path_start_x)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.path_start_x)) == 4, "hb_draw_state_t.path_start_x has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.path_start_x)));
        assert(((cast(*void)(*instance.path_start_y)) - cast(*void)(*instance)) == 8, "hb_draw_state_t.path_start_y has unexpected offset % instead of 8", ((cast(*void)(*instance.path_start_y)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.path_start_y)) == 4, "hb_draw_state_t.path_start_y has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.path_start_y)));
        assert(((cast(*void)(*instance.current_x)) - cast(*void)(*instance)) == 12, "hb_draw_state_t.current_x has unexpected offset % instead of 12", ((cast(*void)(*instance.current_x)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.current_x)) == 4, "hb_draw_state_t.current_x has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.current_x)));
        assert(((cast(*void)(*instance.current_y)) - cast(*void)(*instance)) == 16, "hb_draw_state_t.current_y has unexpected offset % instead of 16", ((cast(*void)(*instance.current_y)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.current_y)) == 4, "hb_draw_state_t.current_y has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.current_y)));
        assert(((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)) == 20, "hb_draw_state_t.reserved1 has unexpected offset % instead of 20", ((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.reserved1)) == 4, "hb_draw_state_t.reserved1 has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.reserved1)));
        assert(((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)) == 24, "hb_draw_state_t.reserved2 has unexpected offset % instead of 24", ((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.reserved2)) == 4, "hb_draw_state_t.reserved2 has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.reserved2)));
        assert(((cast(*void)(*instance.reserved3)) - cast(*void)(*instance)) == 28, "hb_draw_state_t.reserved3 has unexpected offset % instead of 28", ((cast(*void)(*instance.reserved3)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.reserved3)) == 4, "hb_draw_state_t.reserved3 has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.reserved3)));
        assert(((cast(*void)(*instance.reserved4)) - cast(*void)(*instance)) == 32, "hb_draw_state_t.reserved4 has unexpected offset % instead of 32", ((cast(*void)(*instance.reserved4)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.reserved4)) == 4, "hb_draw_state_t.reserved4 has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.reserved4)));
        assert(((cast(*void)(*instance.reserved5)) - cast(*void)(*instance)) == 36, "hb_draw_state_t.reserved5 has unexpected offset % instead of 36", ((cast(*void)(*instance.reserved5)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.reserved5)) == 4, "hb_draw_state_t.reserved5 has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.reserved5)));
        assert(((cast(*void)(*instance.reserved6)) - cast(*void)(*instance)) == 40, "hb_draw_state_t.reserved6 has unexpected offset % instead of 40", ((cast(*void)(*instance.reserved6)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.reserved6)) == 4, "hb_draw_state_t.reserved6 has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.reserved6)));
        assert(((cast(*void)(*instance.reserved7)) - cast(*void)(*instance)) == 44, "hb_draw_state_t.reserved7 has unexpected offset % instead of 44", ((cast(*void)(*instance.reserved7)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_draw_state_t.reserved7)) == 4, "hb_draw_state_t.reserved7 has unexpected size % instead of 4", size_of(type_of(hb_draw_state_t.reserved7)));
        assert(size_of(hb_draw_state_t) == 48, "hb_draw_state_t has size % instead of 48", size_of(hb_draw_state_t));
    }

    {
        instance: hb_color_stop_t;
        assert(((cast(*void)(*instance.offset)) - cast(*void)(*instance)) == 0, "hb_color_stop_t.offset has unexpected offset % instead of 0", ((cast(*void)(*instance.offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_stop_t.offset)) == 4, "hb_color_stop_t.offset has unexpected size % instead of 4", size_of(type_of(hb_color_stop_t.offset)));
        assert(((cast(*void)(*instance.is_foreground)) - cast(*void)(*instance)) == 4, "hb_color_stop_t.is_foreground has unexpected offset % instead of 4", ((cast(*void)(*instance.is_foreground)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_stop_t.is_foreground)) == 4, "hb_color_stop_t.is_foreground has unexpected size % instead of 4", size_of(type_of(hb_color_stop_t.is_foreground)));
        assert(((cast(*void)(*instance.color)) - cast(*void)(*instance)) == 8, "hb_color_stop_t.color has unexpected offset % instead of 8", ((cast(*void)(*instance.color)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_stop_t.color)) == 4, "hb_color_stop_t.color has unexpected size % instead of 4", size_of(type_of(hb_color_stop_t.color)));
        assert(size_of(hb_color_stop_t) == 12, "hb_color_stop_t has size % instead of 12", size_of(hb_color_stop_t));
    }

    {
        instance: hb_color_line_t;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "hb_color_line_t.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.data)) == 8, "hb_color_line_t.data has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.data)));
        assert(((cast(*void)(*instance.get_color_stops)) - cast(*void)(*instance)) == 8, "hb_color_line_t.get_color_stops has unexpected offset % instead of 8", ((cast(*void)(*instance.get_color_stops)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.get_color_stops)) == 8, "hb_color_line_t.get_color_stops has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.get_color_stops)));
        assert(((cast(*void)(*instance.get_color_stops_user_data)) - cast(*void)(*instance)) == 16, "hb_color_line_t.get_color_stops_user_data has unexpected offset % instead of 16", ((cast(*void)(*instance.get_color_stops_user_data)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.get_color_stops_user_data)) == 8, "hb_color_line_t.get_color_stops_user_data has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.get_color_stops_user_data)));
        assert(((cast(*void)(*instance.get_extend)) - cast(*void)(*instance)) == 24, "hb_color_line_t.get_extend has unexpected offset % instead of 24", ((cast(*void)(*instance.get_extend)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.get_extend)) == 8, "hb_color_line_t.get_extend has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.get_extend)));
        assert(((cast(*void)(*instance.get_extend_user_data)) - cast(*void)(*instance)) == 32, "hb_color_line_t.get_extend_user_data has unexpected offset % instead of 32", ((cast(*void)(*instance.get_extend_user_data)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.get_extend_user_data)) == 8, "hb_color_line_t.get_extend_user_data has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.get_extend_user_data)));
        assert(((cast(*void)(*instance.reserved0)) - cast(*void)(*instance)) == 40, "hb_color_line_t.reserved0 has unexpected offset % instead of 40", ((cast(*void)(*instance.reserved0)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved0)) == 8, "hb_color_line_t.reserved0 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved0)));
        assert(((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)) == 48, "hb_color_line_t.reserved1 has unexpected offset % instead of 48", ((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved1)) == 8, "hb_color_line_t.reserved1 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved1)));
        assert(((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)) == 56, "hb_color_line_t.reserved2 has unexpected offset % instead of 56", ((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved2)) == 8, "hb_color_line_t.reserved2 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved2)));
        assert(((cast(*void)(*instance.reserved3)) - cast(*void)(*instance)) == 64, "hb_color_line_t.reserved3 has unexpected offset % instead of 64", ((cast(*void)(*instance.reserved3)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved3)) == 8, "hb_color_line_t.reserved3 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved3)));
        assert(((cast(*void)(*instance.reserved5)) - cast(*void)(*instance)) == 72, "hb_color_line_t.reserved5 has unexpected offset % instead of 72", ((cast(*void)(*instance.reserved5)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved5)) == 8, "hb_color_line_t.reserved5 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved5)));
        assert(((cast(*void)(*instance.reserved6)) - cast(*void)(*instance)) == 80, "hb_color_line_t.reserved6 has unexpected offset % instead of 80", ((cast(*void)(*instance.reserved6)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved6)) == 8, "hb_color_line_t.reserved6 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved6)));
        assert(((cast(*void)(*instance.reserved7)) - cast(*void)(*instance)) == 88, "hb_color_line_t.reserved7 has unexpected offset % instead of 88", ((cast(*void)(*instance.reserved7)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved7)) == 8, "hb_color_line_t.reserved7 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved7)));
        assert(((cast(*void)(*instance.reserved8)) - cast(*void)(*instance)) == 96, "hb_color_line_t.reserved8 has unexpected offset % instead of 96", ((cast(*void)(*instance.reserved8)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_color_line_t.reserved8)) == 8, "hb_color_line_t.reserved8 has unexpected size % instead of 8", size_of(type_of(hb_color_line_t.reserved8)));
        assert(size_of(hb_color_line_t) == 104, "hb_color_line_t has size % instead of 104", size_of(hb_color_line_t));
    }

    {
        instance: hb_font_extents_t;
        assert(((cast(*void)(*instance.ascender)) - cast(*void)(*instance)) == 0, "hb_font_extents_t.ascender has unexpected offset % instead of 0", ((cast(*void)(*instance.ascender)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.ascender)) == 4, "hb_font_extents_t.ascender has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.ascender)));
        assert(((cast(*void)(*instance.descender)) - cast(*void)(*instance)) == 4, "hb_font_extents_t.descender has unexpected offset % instead of 4", ((cast(*void)(*instance.descender)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.descender)) == 4, "hb_font_extents_t.descender has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.descender)));
        assert(((cast(*void)(*instance.line_gap)) - cast(*void)(*instance)) == 8, "hb_font_extents_t.line_gap has unexpected offset % instead of 8", ((cast(*void)(*instance.line_gap)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.line_gap)) == 4, "hb_font_extents_t.line_gap has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.line_gap)));
        assert(((cast(*void)(*instance.reserved9)) - cast(*void)(*instance)) == 12, "hb_font_extents_t.reserved9 has unexpected offset % instead of 12", ((cast(*void)(*instance.reserved9)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved9)) == 4, "hb_font_extents_t.reserved9 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved9)));
        assert(((cast(*void)(*instance.reserved8)) - cast(*void)(*instance)) == 16, "hb_font_extents_t.reserved8 has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved8)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved8)) == 4, "hb_font_extents_t.reserved8 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved8)));
        assert(((cast(*void)(*instance.reserved7)) - cast(*void)(*instance)) == 20, "hb_font_extents_t.reserved7 has unexpected offset % instead of 20", ((cast(*void)(*instance.reserved7)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved7)) == 4, "hb_font_extents_t.reserved7 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved7)));
        assert(((cast(*void)(*instance.reserved6)) - cast(*void)(*instance)) == 24, "hb_font_extents_t.reserved6 has unexpected offset % instead of 24", ((cast(*void)(*instance.reserved6)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved6)) == 4, "hb_font_extents_t.reserved6 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved6)));
        assert(((cast(*void)(*instance.reserved5)) - cast(*void)(*instance)) == 28, "hb_font_extents_t.reserved5 has unexpected offset % instead of 28", ((cast(*void)(*instance.reserved5)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved5)) == 4, "hb_font_extents_t.reserved5 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved5)));
        assert(((cast(*void)(*instance.reserved4)) - cast(*void)(*instance)) == 32, "hb_font_extents_t.reserved4 has unexpected offset % instead of 32", ((cast(*void)(*instance.reserved4)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved4)) == 4, "hb_font_extents_t.reserved4 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved4)));
        assert(((cast(*void)(*instance.reserved3)) - cast(*void)(*instance)) == 36, "hb_font_extents_t.reserved3 has unexpected offset % instead of 36", ((cast(*void)(*instance.reserved3)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved3)) == 4, "hb_font_extents_t.reserved3 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved3)));
        assert(((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)) == 40, "hb_font_extents_t.reserved2 has unexpected offset % instead of 40", ((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved2)) == 4, "hb_font_extents_t.reserved2 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved2)));
        assert(((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)) == 44, "hb_font_extents_t.reserved1 has unexpected offset % instead of 44", ((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_font_extents_t.reserved1)) == 4, "hb_font_extents_t.reserved1 has unexpected size % instead of 4", size_of(type_of(hb_font_extents_t.reserved1)));
        assert(size_of(hb_font_extents_t) == 48, "hb_font_extents_t has size % instead of 48", size_of(hb_font_extents_t));
    }

    {
        instance: hb_glyph_info_t;
        assert(((cast(*void)(*instance.codepoint)) - cast(*void)(*instance)) == 0, "hb_glyph_info_t.codepoint has unexpected offset % instead of 0", ((cast(*void)(*instance.codepoint)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_info_t.codepoint)) == 4, "hb_glyph_info_t.codepoint has unexpected size % instead of 4", size_of(type_of(hb_glyph_info_t.codepoint)));
        assert(((cast(*void)(*instance.mask)) - cast(*void)(*instance)) == 4, "hb_glyph_info_t.mask has unexpected offset % instead of 4", ((cast(*void)(*instance.mask)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_info_t.mask)) == 4, "hb_glyph_info_t.mask has unexpected size % instead of 4", size_of(type_of(hb_glyph_info_t.mask)));
        assert(((cast(*void)(*instance.cluster)) - cast(*void)(*instance)) == 8, "hb_glyph_info_t.cluster has unexpected offset % instead of 8", ((cast(*void)(*instance.cluster)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_info_t.cluster)) == 4, "hb_glyph_info_t.cluster has unexpected size % instead of 4", size_of(type_of(hb_glyph_info_t.cluster)));
        assert(((cast(*void)(*instance.var1)) - cast(*void)(*instance)) == 12, "hb_glyph_info_t.var1 has unexpected offset % instead of 12", ((cast(*void)(*instance.var1)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_info_t.var1)) == 4, "hb_glyph_info_t.var1 has unexpected size % instead of 4", size_of(type_of(hb_glyph_info_t.var1)));
        assert(((cast(*void)(*instance.var2)) - cast(*void)(*instance)) == 16, "hb_glyph_info_t.var2 has unexpected offset % instead of 16", ((cast(*void)(*instance.var2)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_info_t.var2)) == 4, "hb_glyph_info_t.var2 has unexpected size % instead of 4", size_of(type_of(hb_glyph_info_t.var2)));
        assert(size_of(hb_glyph_info_t) == 20, "hb_glyph_info_t has size % instead of 20", size_of(hb_glyph_info_t));
    }

    {
        instance: hb_glyph_position_t;
        assert(((cast(*void)(*instance.x_advance)) - cast(*void)(*instance)) == 0, "hb_glyph_position_t.x_advance has unexpected offset % instead of 0", ((cast(*void)(*instance.x_advance)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_position_t.x_advance)) == 4, "hb_glyph_position_t.x_advance has unexpected size % instead of 4", size_of(type_of(hb_glyph_position_t.x_advance)));
        assert(((cast(*void)(*instance.y_advance)) - cast(*void)(*instance)) == 4, "hb_glyph_position_t.y_advance has unexpected offset % instead of 4", ((cast(*void)(*instance.y_advance)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_position_t.y_advance)) == 4, "hb_glyph_position_t.y_advance has unexpected size % instead of 4", size_of(type_of(hb_glyph_position_t.y_advance)));
        assert(((cast(*void)(*instance.x_offset)) - cast(*void)(*instance)) == 8, "hb_glyph_position_t.x_offset has unexpected offset % instead of 8", ((cast(*void)(*instance.x_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_position_t.x_offset)) == 4, "hb_glyph_position_t.x_offset has unexpected size % instead of 4", size_of(type_of(hb_glyph_position_t.x_offset)));
        assert(((cast(*void)(*instance.y_offset)) - cast(*void)(*instance)) == 12, "hb_glyph_position_t.y_offset has unexpected offset % instead of 12", ((cast(*void)(*instance.y_offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_position_t.y_offset)) == 4, "hb_glyph_position_t.y_offset has unexpected size % instead of 4", size_of(type_of(hb_glyph_position_t.y_offset)));
        assert(((cast(*void)(*instance.var)) - cast(*void)(*instance)) == 16, "hb_glyph_position_t.var has unexpected offset % instead of 16", ((cast(*void)(*instance.var)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_glyph_position_t.var)) == 4, "hb_glyph_position_t.var has unexpected size % instead of 4", size_of(type_of(hb_glyph_position_t.var)));
        assert(size_of(hb_glyph_position_t) == 20, "hb_glyph_position_t has size % instead of 20", size_of(hb_glyph_position_t));
    }

    {
        instance: hb_segment_properties_t;
        assert(((cast(*void)(*instance.direction)) - cast(*void)(*instance)) == 0, "hb_segment_properties_t.direction has unexpected offset % instead of 0", ((cast(*void)(*instance.direction)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_segment_properties_t.direction)) == 4, "hb_segment_properties_t.direction has unexpected size % instead of 4", size_of(type_of(hb_segment_properties_t.direction)));
        assert(((cast(*void)(*instance.script)) - cast(*void)(*instance)) == 4, "hb_segment_properties_t.script has unexpected offset % instead of 4", ((cast(*void)(*instance.script)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_segment_properties_t.script)) == 4, "hb_segment_properties_t.script has unexpected size % instead of 4", size_of(type_of(hb_segment_properties_t.script)));
        assert(((cast(*void)(*instance.language)) - cast(*void)(*instance)) == 8, "hb_segment_properties_t.language has unexpected offset % instead of 8", ((cast(*void)(*instance.language)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_segment_properties_t.language)) == 8, "hb_segment_properties_t.language has unexpected size % instead of 8", size_of(type_of(hb_segment_properties_t.language)));
        assert(((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)) == 16, "hb_segment_properties_t.reserved1 has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved1)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_segment_properties_t.reserved1)) == 8, "hb_segment_properties_t.reserved1 has unexpected size % instead of 8", size_of(type_of(hb_segment_properties_t.reserved1)));
        assert(((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)) == 24, "hb_segment_properties_t.reserved2 has unexpected offset % instead of 24", ((cast(*void)(*instance.reserved2)) - cast(*void)(*instance)));
        assert(size_of(type_of(hb_segment_properties_t.reserved2)) == 8, "hb_segment_properties_t.reserved2 has unexpected size % instead of 8", size_of(type_of(hb_segment_properties_t.reserved2)));
        assert(size_of(hb_segment_properties_t) == 32, "hb_segment_properties_t has size % instead of 32", size_of(hb_segment_properties_t));
    }
}

