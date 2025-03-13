//
// This file was auto-generated using the following command:
//
// jai first.jai
//



RETRO_API_VERSION :: 1;

RETRO_DEVICE_TYPE_SHIFT :: 8;
RETRO_DEVICE_MASK :: (1 << RETRO_DEVICE_TYPE_SHIFT) - 1;

RETRO_DEVICE_NONE :: 0;

RETRO_DEVICE_JOYPAD :: 1;

RETRO_DEVICE_MOUSE :: 2;

RETRO_DEVICE_KEYBOARD :: 3;

RETRO_DEVICE_LIGHTGUN :: 4;

RETRO_DEVICE_ANALOG :: 5;

RETRO_DEVICE_POINTER :: 6;

RETRO_DEVICE_ID_JOYPAD_B :: 0;

RETRO_DEVICE_ID_JOYPAD_Y :: 1;

RETRO_DEVICE_ID_JOYPAD_SELECT :: 2;

RETRO_DEVICE_ID_JOYPAD_START :: 3;

RETRO_DEVICE_ID_JOYPAD_UP :: 4;

RETRO_DEVICE_ID_JOYPAD_DOWN :: 5;

RETRO_DEVICE_ID_JOYPAD_LEFT :: 6;

RETRO_DEVICE_ID_JOYPAD_RIGHT :: 7;

RETRO_DEVICE_ID_JOYPAD_A :: 8;

RETRO_DEVICE_ID_JOYPAD_X :: 9;

RETRO_DEVICE_ID_JOYPAD_L :: 10;

RETRO_DEVICE_ID_JOYPAD_R :: 11;

RETRO_DEVICE_ID_JOYPAD_L2 :: 12;

RETRO_DEVICE_ID_JOYPAD_R2 :: 13;

RETRO_DEVICE_ID_JOYPAD_L3 :: 14;

RETRO_DEVICE_ID_JOYPAD_R3 :: 15;

RETRO_DEVICE_ID_JOYPAD_MASK :: 256;

RETRO_DEVICE_INDEX_ANALOG_LEFT :: 0;
RETRO_DEVICE_INDEX_ANALOG_RIGHT :: 1;
RETRO_DEVICE_INDEX_ANALOG_BUTTON :: 2;
RETRO_DEVICE_ID_ANALOG_X :: 0;
RETRO_DEVICE_ID_ANALOG_Y :: 1;

RETRO_DEVICE_ID_MOUSE_X :: 0;
RETRO_DEVICE_ID_MOUSE_Y :: 1;
RETRO_DEVICE_ID_MOUSE_LEFT :: 2;
RETRO_DEVICE_ID_MOUSE_RIGHT :: 3;
RETRO_DEVICE_ID_MOUSE_WHEELUP :: 4;
RETRO_DEVICE_ID_MOUSE_WHEELDOWN :: 5;
RETRO_DEVICE_ID_MOUSE_MIDDLE :: 6;
RETRO_DEVICE_ID_MOUSE_HORIZ_WHEELUP :: 7;
RETRO_DEVICE_ID_MOUSE_HORIZ_WHEELDOWN :: 8;
RETRO_DEVICE_ID_MOUSE_BUTTON_4 :: 9;
RETRO_DEVICE_ID_MOUSE_BUTTON_5 :: 10;

RETRO_DEVICE_ID_LIGHTGUN_SCREEN_X :: 13;
RETRO_DEVICE_ID_LIGHTGUN_SCREEN_Y :: 14;

RETRO_DEVICE_ID_LIGHTGUN_IS_OFFSCREEN :: 15;
RETRO_DEVICE_ID_LIGHTGUN_TRIGGER :: 2;
RETRO_DEVICE_ID_LIGHTGUN_RELOAD :: 16;
RETRO_DEVICE_ID_LIGHTGUN_AUX_A :: 3;
RETRO_DEVICE_ID_LIGHTGUN_AUX_B :: 4;
RETRO_DEVICE_ID_LIGHTGUN_START :: 6;
RETRO_DEVICE_ID_LIGHTGUN_SELECT :: 7;
RETRO_DEVICE_ID_LIGHTGUN_AUX_C :: 8;
RETRO_DEVICE_ID_LIGHTGUN_DPAD_UP :: 9;
RETRO_DEVICE_ID_LIGHTGUN_DPAD_DOWN :: 10;
RETRO_DEVICE_ID_LIGHTGUN_DPAD_LEFT :: 11;
RETRO_DEVICE_ID_LIGHTGUN_DPAD_RIGHT :: 12;

RETRO_DEVICE_ID_LIGHTGUN_X :: 0;
RETRO_DEVICE_ID_LIGHTGUN_Y :: 1;
RETRO_DEVICE_ID_LIGHTGUN_CURSOR :: 3;
RETRO_DEVICE_ID_LIGHTGUN_TURBO :: 4;
RETRO_DEVICE_ID_LIGHTGUN_PAUSE :: 5;

RETRO_DEVICE_ID_POINTER_X :: 0;
RETRO_DEVICE_ID_POINTER_Y :: 1;
RETRO_DEVICE_ID_POINTER_PRESSED :: 2;
RETRO_DEVICE_ID_POINTER_COUNT :: 3;

RETRO_DEVICE_ID_POINTER_IS_OFFSCREEN :: 15;

RETRO_REGION_NTSC :: 0;
RETRO_REGION_PAL :: 1;

RETRO_MEMORY_MASK :: 0xff;

RETRO_MEMORY_SAVE_RAM :: 0;

RETRO_MEMORY_RTC :: 1;

RETRO_MEMORY_SYSTEM_RAM :: 2;

RETRO_MEMORY_VIDEO_RAM :: 3;

RETRO_ENVIRONMENT_EXPERIMENTAL :: 0x10000;

RETRO_ENVIRONMENT_PRIVATE :: 0x20000;

RETRO_ENVIRONMENT_SET_ROTATION :: 1;

RETRO_ENVIRONMENT_GET_OVERSCAN :: 2;

RETRO_ENVIRONMENT_GET_CAN_DUPE :: 3;

RETRO_ENVIRONMENT_SET_MESSAGE :: 6;

RETRO_ENVIRONMENT_SHUTDOWN :: 7;

RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL :: 8;

RETRO_ENVIRONMENT_GET_SYSTEM_DIRECTORY :: 9;

RETRO_ENVIRONMENT_SET_PIXEL_FORMAT :: 10;

RETRO_ENVIRONMENT_SET_INPUT_DESCRIPTORS :: 11;

RETRO_ENVIRONMENT_SET_KEYBOARD_CALLBACK :: 12;

RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE :: 13;

RETRO_ENVIRONMENT_SET_HW_RENDER :: 14;

RETRO_ENVIRONMENT_GET_VARIABLE :: 15;

RETRO_ENVIRONMENT_SET_VARIABLES :: 16;

RETRO_ENVIRONMENT_GET_VARIABLE_UPDATE :: 17;

RETRO_ENVIRONMENT_SET_SUPPORT_NO_GAME :: 18;

RETRO_ENVIRONMENT_GET_LIBRETRO_PATH :: 19;

RETRO_ENVIRONMENT_SET_FRAME_TIME_CALLBACK :: 21;

RETRO_ENVIRONMENT_SET_AUDIO_CALLBACK :: 22;

RETRO_ENVIRONMENT_GET_RUMBLE_INTERFACE :: 23;

RETRO_ENVIRONMENT_GET_INPUT_DEVICE_CAPABILITIES :: 24;

RETRO_ENVIRONMENT_GET_SENSOR_INTERFACE :: 25 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_CAMERA_INTERFACE :: 26 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_LOG_INTERFACE :: 27;

RETRO_ENVIRONMENT_GET_PERF_INTERFACE :: 28;

RETRO_ENVIRONMENT_GET_LOCATION_INTERFACE :: 29;

RETRO_ENVIRONMENT_GET_CONTENT_DIRECTORY :: 30;

RETRO_ENVIRONMENT_GET_CORE_ASSETS_DIRECTORY :: 30;

RETRO_ENVIRONMENT_GET_SAVE_DIRECTORY :: 31;

RETRO_ENVIRONMENT_SET_SYSTEM_AV_INFO :: 32;

RETRO_ENVIRONMENT_SET_PROC_ADDRESS_CALLBACK :: 33;

RETRO_ENVIRONMENT_SET_SUBSYSTEM_INFO :: 34;

RETRO_ENVIRONMENT_SET_CONTROLLER_INFO :: 35;

RETRO_ENVIRONMENT_SET_MEMORY_MAPS :: 36 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_SET_GEOMETRY :: 37;

RETRO_ENVIRONMENT_GET_USERNAME :: 38;

RETRO_ENVIRONMENT_GET_LANGUAGE :: 39;

RETRO_ENVIRONMENT_GET_CURRENT_SOFTWARE_FRAMEBUFFER :: 40 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_HW_RENDER_INTERFACE :: 41 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_SET_SUPPORT_ACHIEVEMENTS :: 42 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_SET_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE :: 43 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_SET_SERIALIZATION_QUIRKS :: 44;

RETRO_ENVIRONMENT_SET_HW_SHARED_CONTEXT :: 44 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_VFS_INTERFACE :: 45 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_LED_INTERFACE :: 46 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_AUDIO_VIDEO_ENABLE :: 47 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_MIDI_INTERFACE :: 48 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_FASTFORWARDING :: 49 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_TARGET_REFRESH_RATE :: 50 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_INPUT_BITMASKS :: 51 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_CORE_OPTIONS_VERSION :: 52;

RETRO_ENVIRONMENT_SET_CORE_OPTIONS :: 53;

RETRO_ENVIRONMENT_SET_CORE_OPTIONS_INTL :: 54;

RETRO_ENVIRONMENT_SET_CORE_OPTIONS_DISPLAY :: 55;

RETRO_ENVIRONMENT_GET_PREFERRED_HW_RENDER :: 56;

RETRO_ENVIRONMENT_GET_DISK_CONTROL_INTERFACE_VERSION :: 57;

RETRO_ENVIRONMENT_SET_DISK_CONTROL_EXT_INTERFACE :: 58;

RETRO_ENVIRONMENT_GET_MESSAGE_INTERFACE_VERSION :: 59;

RETRO_ENVIRONMENT_SET_MESSAGE_EXT :: 60;

RETRO_ENVIRONMENT_GET_INPUT_MAX_USERS :: 61;

RETRO_ENVIRONMENT_SET_AUDIO_BUFFER_STATUS_CALLBACK :: 62;

RETRO_ENVIRONMENT_SET_MINIMUM_AUDIO_LATENCY :: 63;

RETRO_ENVIRONMENT_SET_FASTFORWARDING_OVERRIDE :: 64;

RETRO_ENVIRONMENT_SET_CONTENT_INFO_OVERRIDE :: 65;

RETRO_ENVIRONMENT_GET_GAME_INFO_EXT :: 66;

RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2 :: 67;

RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2_INTL :: 68;

RETRO_ENVIRONMENT_SET_CORE_OPTIONS_UPDATE_DISPLAY_CALLBACK :: 69;

RETRO_ENVIRONMENT_SET_VARIABLE :: 70;

RETRO_ENVIRONMENT_GET_THROTTLE_STATE :: 71 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_SAVESTATE_CONTEXT :: 72 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_SUPPORT :: 73 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_JIT_CAPABLE :: 74;

RETRO_ENVIRONMENT_GET_MICROPHONE_INTERFACE :: 75 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_GET_DEVICE_POWER :: 77 | RETRO_ENVIRONMENT_EXPERIMENTAL;

RETRO_ENVIRONMENT_SET_NETPACKET_INTERFACE :: 78;

RETRO_ENVIRONMENT_GET_PLAYLIST_DIRECTORY :: 79;

RETRO_ENVIRONMENT_GET_FILE_BROWSER_START_DIRECTORY :: 80;

RETRO_VFS_FILE_ACCESS_READ :: 1 << 0;

RETRO_VFS_FILE_ACCESS_WRITE :: 1 << 1;

RETRO_VFS_FILE_ACCESS_READ_WRITE :: RETRO_VFS_FILE_ACCESS_READ | RETRO_VFS_FILE_ACCESS_WRITE;

RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING :: 1 << 2;

RETRO_VFS_FILE_ACCESS_HINT_NONE :: 0;

RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS :: 1 << 0;

RETRO_VFS_SEEK_POSITION_START :: 0;

RETRO_VFS_SEEK_POSITION_CURRENT :: 1;

RETRO_VFS_SEEK_POSITION_END :: 2;

RETRO_VFS_STAT_IS_VALID :: 1 << 0;

RETRO_VFS_STAT_IS_DIRECTORY :: 1 << 1;

RETRO_VFS_STAT_IS_CHARACTER_SPECIAL :: 1 << 2;

RETRO_SERIALIZATION_QUIRK_INCOMPLETE :: 1 << 0;

RETRO_SERIALIZATION_QUIRK_MUST_INITIALIZE :: 1 << 1;

RETRO_SERIALIZATION_QUIRK_CORE_VARIABLE_SIZE :: 1 << 2;

RETRO_SERIALIZATION_QUIRK_FRONT_VARIABLE_SIZE :: 1 << 3;

RETRO_SERIALIZATION_QUIRK_SINGLE_SESSION :: 1 << 4;

RETRO_SERIALIZATION_QUIRK_ENDIAN_DEPENDENT :: 1 << 5;

RETRO_SERIALIZATION_QUIRK_PLATFORM_DEPENDENT :: 1 << 6;

RETRO_MEMDESC_CONST :: 1 << 0;

RETRO_MEMDESC_BIGENDIAN :: 1 << 1;

RETRO_MEMDESC_SYSTEM_RAM :: 1 << 2;

RETRO_MEMDESC_SAVE_RAM :: 1 << 3;

RETRO_MEMDESC_VIDEO_RAM :: 1 << 4;

RETRO_MEMDESC_ALIGN_2 :: 1 << 16;

RETRO_MEMDESC_ALIGN_4 :: 2 << 16;

RETRO_MEMDESC_ALIGN_8 :: 3 << 16;

RETRO_MEMDESC_MINSIZE_2 :: 1 << 24;

RETRO_MEMDESC_MINSIZE_4 :: 2 << 24;

RETRO_MEMDESC_MINSIZE_8 :: 3 << 24;

RETRO_SIMD_SSE :: 1 << 0;

RETRO_SIMD_SSE2 :: 1 << 1;

RETRO_SIMD_VMX :: 1 << 2;

RETRO_SIMD_VMX128 :: 1 << 3;

RETRO_SIMD_AVX :: 1 << 4;

RETRO_SIMD_NEON :: 1 << 5;

RETRO_SIMD_SSE3 :: 1 << 6;

RETRO_SIMD_SSSE3 :: 1 << 7;

RETRO_SIMD_MMX :: 1 << 8;

RETRO_SIMD_MMXEXT :: 1 << 9;

RETRO_SIMD_SSE4 :: 1 << 10;

RETRO_SIMD_SSE42 :: 1 << 11;

RETRO_SIMD_AVX2 :: 1 << 12;

RETRO_SIMD_VFPU :: 1 << 13;

RETRO_SIMD_PS :: 1 << 14;

RETRO_SIMD_AES :: 1 << 15;

RETRO_SIMD_VFPV3 :: 1 << 16;

RETRO_SIMD_VFPV4 :: 1 << 17;

RETRO_SIMD_POPCNT :: 1 << 18;

RETRO_SIMD_MOVBE :: 1 << 19;

RETRO_SIMD_CMOV :: 1 << 20;

RETRO_SIMD_ASIMD :: 1 << 21;

RETRO_SENSOR_ACCELEROMETER_X :: 0;

RETRO_SENSOR_ACCELEROMETER_Y :: 1;

RETRO_SENSOR_ACCELEROMETER_Z :: 2;

RETRO_SENSOR_GYROSCOPE_X :: 3;

RETRO_SENSOR_GYROSCOPE_Y :: 4;

RETRO_SENSOR_GYROSCOPE_Z :: 5;

RETRO_SENSOR_ILLUMINANCE :: 6;

RETRO_HW_FRAME_BUFFER_VALID :: cast,trunc(*void) -1;

RETRO_NETPACKET_UNRELIABLE :: 0;
RETRO_NETPACKET_RELIABLE :: 1 << 0;
RETRO_NETPACKET_UNSEQUENCED :: 1 << 1;
RETRO_NETPACKET_FLUSH_HINT :: 1 << 2;

RETRO_NETPACKET_BROADCAST :: 0xFFFF;

RETRO_NUM_CORE_OPTION_VALUES_MAX :: 128;

RETRO_MEMORY_ACCESS_WRITE :: 1 << 0;

RETRO_MEMORY_ACCESS_READ :: 1 << 1;

RETRO_MEMORY_TYPE_CACHED :: 1 << 0;

RETRO_THROTTLE_NONE :: 0;

RETRO_THROTTLE_FRAME_STEPPING :: 1;

RETRO_THROTTLE_FAST_FORWARD :: 2;

RETRO_THROTTLE_SLOW_MOTION :: 3;

RETRO_THROTTLE_REWINDING :: 4;

RETRO_THROTTLE_VSYNC :: 5;

RETRO_THROTTLE_UNBLOCKED :: 6;

RETRO_MICROPHONE_INTERFACE_VERSION :: 1;

RETRO_POWERSTATE_NO_ESTIMATE :: -1;

/**
* Identifiers for supported languages.
* @see RETRO_ENVIRONMENT_GET_LANGUAGE
*/
language :: enum u32 {
    ENGLISH             :: 0;
    JAPANESE            :: 1;
    FRENCH              :: 2;
    SPANISH             :: 3;
    GERMAN              :: 4;
    ITALIAN             :: 5;
    DUTCH               :: 6;
    PORTUGUESE_BRAZIL   :: 7;
    PORTUGUESE_PORTUGAL :: 8;
    RUSSIAN             :: 9;
    KOREAN              :: 10;
    CHINESE_TRADITIONAL :: 11;
    CHINESE_SIMPLIFIED  :: 12;
    ESPERANTO           :: 13;
    POLISH              :: 14;
    VIETNAMESE          :: 15;
    ARABIC              :: 16;
    GREEK               :: 17;
    TURKISH             :: 18;
    SLOVAK              :: 19;
    PERSIAN             :: 20;
    HEBREW              :: 21;
    ASTURIAN            :: 22;
    FINNISH             :: 23;
    INDONESIAN          :: 24;
    SWEDISH             :: 25;
    UKRAINIAN           :: 26;
    CZECH               :: 27;
    CATALAN_VALENCIA    :: 28;
    CATALAN             :: 29;
    BRITISH_ENGLISH     :: 30;
    HUNGARIAN           :: 31;
    BELARUSIAN          :: 32;
    GALICIAN            :: 33;
    NORWEGIAN           :: 34;
    LAST                :: 35;

    DUMMY               :: 2147483647;

    RETRO_LANGUAGE_ENGLISH             :: ENGLISH;
    RETRO_LANGUAGE_JAPANESE            :: JAPANESE;
    RETRO_LANGUAGE_FRENCH              :: FRENCH;
    RETRO_LANGUAGE_SPANISH             :: SPANISH;
    RETRO_LANGUAGE_GERMAN              :: GERMAN;
    RETRO_LANGUAGE_ITALIAN             :: ITALIAN;
    RETRO_LANGUAGE_DUTCH               :: DUTCH;
    RETRO_LANGUAGE_PORTUGUESE_BRAZIL   :: PORTUGUESE_BRAZIL;
    RETRO_LANGUAGE_PORTUGUESE_PORTUGAL :: PORTUGUESE_PORTUGAL;
    RETRO_LANGUAGE_RUSSIAN             :: RUSSIAN;
    RETRO_LANGUAGE_KOREAN              :: KOREAN;
    RETRO_LANGUAGE_CHINESE_TRADITIONAL :: CHINESE_TRADITIONAL;
    RETRO_LANGUAGE_CHINESE_SIMPLIFIED  :: CHINESE_SIMPLIFIED;
    RETRO_LANGUAGE_ESPERANTO           :: ESPERANTO;
    RETRO_LANGUAGE_POLISH              :: POLISH;
    RETRO_LANGUAGE_VIETNAMESE          :: VIETNAMESE;
    RETRO_LANGUAGE_ARABIC              :: ARABIC;
    RETRO_LANGUAGE_GREEK               :: GREEK;
    RETRO_LANGUAGE_TURKISH             :: TURKISH;
    RETRO_LANGUAGE_SLOVAK              :: SLOVAK;
    RETRO_LANGUAGE_PERSIAN             :: PERSIAN;
    RETRO_LANGUAGE_HEBREW              :: HEBREW;
    RETRO_LANGUAGE_ASTURIAN            :: ASTURIAN;
    RETRO_LANGUAGE_FINNISH             :: FINNISH;
    RETRO_LANGUAGE_INDONESIAN          :: INDONESIAN;
    RETRO_LANGUAGE_SWEDISH             :: SWEDISH;
    RETRO_LANGUAGE_UKRAINIAN           :: UKRAINIAN;
    RETRO_LANGUAGE_CZECH               :: CZECH;
    RETRO_LANGUAGE_CATALAN_VALENCIA    :: CATALAN_VALENCIA;
    RETRO_LANGUAGE_CATALAN             :: CATALAN;
    RETRO_LANGUAGE_BRITISH_ENGLISH     :: BRITISH_ENGLISH;
    RETRO_LANGUAGE_HUNGARIAN           :: HUNGARIAN;
    RETRO_LANGUAGE_BELARUSIAN          :: BELARUSIAN;
    RETRO_LANGUAGE_GALICIAN            :: GALICIAN;
    RETRO_LANGUAGE_NORWEGIAN           :: NORWEGIAN;
    RETRO_LANGUAGE_LAST                :: LAST;

    RETRO_LANGUAGE_DUMMY               :: DUMMY;
}

/* Keysyms used for ID in input state callback when polling RETRO_KEYBOARD. */
key :: enum u32 {
    UNKNOWN           :: 0;
    FIRST             :: 0;
    BACKSPACE         :: 8;
    TAB               :: 9;
    CLEAR             :: 12;
    RETURN            :: 13;
    PAUSE             :: 19;
    ESCAPE            :: 27;
    SPACE             :: 32;
    EXCLAIM           :: 33;
    QUOTEDBL          :: 34;
    HASH              :: 35;
    DOLLAR            :: 36;
    AMPERSAND         :: 38;
    QUOTE             :: 39;
    LEFTPAREN         :: 40;
    RIGHTPAREN        :: 41;
    ASTERISK          :: 42;
    PLUS              :: 43;
    COMMA             :: 44;
    MINUS             :: 45;
    PERIOD            :: 46;
    SLASH             :: 47;
    _0                :: 48;
    _1                :: 49;
    _2                :: 50;
    _3                :: 51;
    _4                :: 52;
    _5                :: 53;
    _6                :: 54;
    _7                :: 55;
    _8                :: 56;
    _9                :: 57;
    COLON             :: 58;
    SEMICOLON         :: 59;
    LESS              :: 60;
    EQUALS            :: 61;
    GREATER           :: 62;
    QUESTION          :: 63;
    AT                :: 64;
    LEFTBRACKET       :: 91;
    BACKSLASH         :: 92;
    RIGHTBRACKET      :: 93;
    CARET             :: 94;
    UNDERSCORE        :: 95;
    BACKQUOTE         :: 96;
    a                 :: 97;
    b                 :: 98;
    c                 :: 99;
    d                 :: 100;
    e                 :: 101;
    f                 :: 102;
    g                 :: 103;
    h                 :: 104;
    i                 :: 105;
    j                 :: 106;
    k                 :: 107;
    l                 :: 108;
    m                 :: 109;
    n                 :: 110;
    o                 :: 111;
    p                 :: 112;
    q                 :: 113;
    r                 :: 114;
    s                 :: 115;
    t                 :: 116;
    u                 :: 117;
    v                 :: 118;
    w                 :: 119;
    x                 :: 120;
    y                 :: 121;
    z                 :: 122;
    LEFTBRACE         :: 123;
    BAR               :: 124;
    RIGHTBRACE        :: 125;
    TILDE             :: 126;
    DELETE            :: 127;

    KP0               :: 256;
    KP1               :: 257;
    KP2               :: 258;
    KP3               :: 259;
    KP4               :: 260;
    KP5               :: 261;
    KP6               :: 262;
    KP7               :: 263;
    KP8               :: 264;
    KP9               :: 265;
    KP_PERIOD         :: 266;
    KP_DIVIDE         :: 267;
    KP_MULTIPLY       :: 268;
    KP_MINUS          :: 269;
    KP_PLUS           :: 270;
    KP_ENTER          :: 271;
    KP_EQUALS         :: 272;

    UP                :: 273;
    DOWN              :: 274;
    RIGHT             :: 275;
    LEFT              :: 276;
    INSERT            :: 277;
    HOME              :: 278;
    END               :: 279;
    PAGEUP            :: 280;
    PAGEDOWN          :: 281;

    F1                :: 282;
    F2                :: 283;
    F3                :: 284;
    F4                :: 285;
    F5                :: 286;
    F6                :: 287;
    F7                :: 288;
    F8                :: 289;
    F9                :: 290;
    F10               :: 291;
    F11               :: 292;
    F12               :: 293;
    F13               :: 294;
    F14               :: 295;
    F15               :: 296;

    NUMLOCK           :: 300;
    CAPSLOCK          :: 301;
    SCROLLOCK         :: 302;
    RSHIFT            :: 303;
    LSHIFT            :: 304;
    RCTRL             :: 305;
    LCTRL             :: 306;
    RALT              :: 307;
    LALT              :: 308;
    RMETA             :: 309;
    LMETA             :: 310;
    LSUPER            :: 311;
    RSUPER            :: 312;
    MODE              :: 313;
    COMPOSE           :: 314;

    HELP              :: 315;
    PRINT             :: 316;
    SYSREQ            :: 317;
    BREAK             :: 318;
    MENU              :: 319;
    POWER             :: 320;
    EURO              :: 321;
    UNDO              :: 322;
    OEM_102           :: 323;

    BROWSER_BACK      :: 324;
    BROWSER_FORWARD   :: 325;
    BROWSER_REFRESH   :: 326;
    BROWSER_STOP      :: 327;
    BROWSER_SEARCH    :: 328;
    BROWSER_FAVORITES :: 329;
    BROWSER_HOME      :: 330;
    VOLUME_MUTE       :: 331;
    VOLUME_DOWN       :: 332;
    VOLUME_UP         :: 333;
    MEDIA_NEXT        :: 334;
    MEDIA_PREV        :: 335;
    MEDIA_STOP        :: 336;
    MEDIA_PLAY_PAUSE  :: 337;
    LAUNCH_MAIL       :: 338;
    LAUNCH_MEDIA      :: 339;
    LAUNCH_APP1       :: 340;
    LAUNCH_APP2       :: 341;

    LAST              :: 342;

    DUMMY             :: 2147483647;

    RETROK_UNKNOWN           :: UNKNOWN;
    RETROK_FIRST             :: FIRST;
    RETROK_BACKSPACE         :: BACKSPACE;
    RETROK_TAB               :: TAB;
    RETROK_CLEAR             :: CLEAR;
    RETROK_RETURN            :: RETURN;
    RETROK_PAUSE             :: PAUSE;
    RETROK_ESCAPE            :: ESCAPE;
    RETROK_SPACE             :: SPACE;
    RETROK_EXCLAIM           :: EXCLAIM;
    RETROK_QUOTEDBL          :: QUOTEDBL;
    RETROK_HASH              :: HASH;
    RETROK_DOLLAR            :: DOLLAR;
    RETROK_AMPERSAND         :: AMPERSAND;
    RETROK_QUOTE             :: QUOTE;
    RETROK_LEFTPAREN         :: LEFTPAREN;
    RETROK_RIGHTPAREN        :: RIGHTPAREN;
    RETROK_ASTERISK          :: ASTERISK;
    RETROK_PLUS              :: PLUS;
    RETROK_COMMA             :: COMMA;
    RETROK_MINUS             :: MINUS;
    RETROK_PERIOD            :: PERIOD;
    RETROK_SLASH             :: SLASH;
    RETROK_0                 :: _0;
    RETROK_1                 :: _1;
    RETROK_2                 :: _2;
    RETROK_3                 :: _3;
    RETROK_4                 :: _4;
    RETROK_5                 :: _5;
    RETROK_6                 :: _6;
    RETROK_7                 :: _7;
    RETROK_8                 :: _8;
    RETROK_9                 :: _9;
    RETROK_COLON             :: COLON;
    RETROK_SEMICOLON         :: SEMICOLON;
    RETROK_LESS              :: LESS;
    RETROK_EQUALS            :: EQUALS;
    RETROK_GREATER           :: GREATER;
    RETROK_QUESTION          :: QUESTION;
    RETROK_AT                :: AT;
    RETROK_LEFTBRACKET       :: LEFTBRACKET;
    RETROK_BACKSLASH         :: BACKSLASH;
    RETROK_RIGHTBRACKET      :: RIGHTBRACKET;
    RETROK_CARET             :: CARET;
    RETROK_UNDERSCORE        :: UNDERSCORE;
    RETROK_BACKQUOTE         :: BACKQUOTE;
    RETROK_a                 :: a;
    RETROK_b                 :: b;
    RETROK_c                 :: c;
    RETROK_d                 :: d;
    RETROK_e                 :: e;
    RETROK_f                 :: f;
    RETROK_g                 :: g;
    RETROK_h                 :: h;
    RETROK_i                 :: i;
    RETROK_j                 :: j;
    RETROK_k                 :: k;
    RETROK_l                 :: l;
    RETROK_m                 :: m;
    RETROK_n                 :: n;
    RETROK_o                 :: o;
    RETROK_p                 :: p;
    RETROK_q                 :: q;
    RETROK_r                 :: r;
    RETROK_s                 :: s;
    RETROK_t                 :: t;
    RETROK_u                 :: u;
    RETROK_v                 :: v;
    RETROK_w                 :: w;
    RETROK_x                 :: x;
    RETROK_y                 :: y;
    RETROK_z                 :: z;
    RETROK_LEFTBRACE         :: LEFTBRACE;
    RETROK_BAR               :: BAR;
    RETROK_RIGHTBRACE        :: RIGHTBRACE;
    RETROK_TILDE             :: TILDE;
    RETROK_DELETE            :: DELETE;

    RETROK_KP0               :: KP0;
    RETROK_KP1               :: KP1;
    RETROK_KP2               :: KP2;
    RETROK_KP3               :: KP3;
    RETROK_KP4               :: KP4;
    RETROK_KP5               :: KP5;
    RETROK_KP6               :: KP6;
    RETROK_KP7               :: KP7;
    RETROK_KP8               :: KP8;
    RETROK_KP9               :: KP9;
    RETROK_KP_PERIOD         :: KP_PERIOD;
    RETROK_KP_DIVIDE         :: KP_DIVIDE;
    RETROK_KP_MULTIPLY       :: KP_MULTIPLY;
    RETROK_KP_MINUS          :: KP_MINUS;
    RETROK_KP_PLUS           :: KP_PLUS;
    RETROK_KP_ENTER          :: KP_ENTER;
    RETROK_KP_EQUALS         :: KP_EQUALS;

    RETROK_UP                :: UP;
    RETROK_DOWN              :: DOWN;
    RETROK_RIGHT             :: RIGHT;
    RETROK_LEFT              :: LEFT;
    RETROK_INSERT            :: INSERT;
    RETROK_HOME              :: HOME;
    RETROK_END               :: END;
    RETROK_PAGEUP            :: PAGEUP;
    RETROK_PAGEDOWN          :: PAGEDOWN;

    RETROK_F1                :: F1;
    RETROK_F2                :: F2;
    RETROK_F3                :: F3;
    RETROK_F4                :: F4;
    RETROK_F5                :: F5;
    RETROK_F6                :: F6;
    RETROK_F7                :: F7;
    RETROK_F8                :: F8;
    RETROK_F9                :: F9;
    RETROK_F10               :: F10;
    RETROK_F11               :: F11;
    RETROK_F12               :: F12;
    RETROK_F13               :: F13;
    RETROK_F14               :: F14;
    RETROK_F15               :: F15;

    RETROK_NUMLOCK           :: NUMLOCK;
    RETROK_CAPSLOCK          :: CAPSLOCK;
    RETROK_SCROLLOCK         :: SCROLLOCK;
    RETROK_RSHIFT            :: RSHIFT;
    RETROK_LSHIFT            :: LSHIFT;
    RETROK_RCTRL             :: RCTRL;
    RETROK_LCTRL             :: LCTRL;
    RETROK_RALT              :: RALT;
    RETROK_LALT              :: LALT;
    RETROK_RMETA             :: RMETA;
    RETROK_LMETA             :: LMETA;
    RETROK_LSUPER            :: LSUPER;
    RETROK_RSUPER            :: RSUPER;
    RETROK_MODE              :: MODE;
    RETROK_COMPOSE           :: COMPOSE;

    RETROK_HELP              :: HELP;
    RETROK_PRINT             :: PRINT;
    RETROK_SYSREQ            :: SYSREQ;
    RETROK_BREAK             :: BREAK;
    RETROK_MENU              :: MENU;
    RETROK_POWER             :: POWER;
    RETROK_EURO              :: EURO;
    RETROK_UNDO              :: UNDO;
    RETROK_OEM_102           :: OEM_102;

    RETROK_BROWSER_BACK      :: BROWSER_BACK;
    RETROK_BROWSER_FORWARD   :: BROWSER_FORWARD;
    RETROK_BROWSER_REFRESH   :: BROWSER_REFRESH;
    RETROK_BROWSER_STOP      :: BROWSER_STOP;
    RETROK_BROWSER_SEARCH    :: BROWSER_SEARCH;
    RETROK_BROWSER_FAVORITES :: BROWSER_FAVORITES;
    RETROK_BROWSER_HOME      :: BROWSER_HOME;
    RETROK_VOLUME_MUTE       :: VOLUME_MUTE;
    RETROK_VOLUME_DOWN       :: VOLUME_DOWN;
    RETROK_VOLUME_UP         :: VOLUME_UP;
    RETROK_MEDIA_NEXT        :: MEDIA_NEXT;
    RETROK_MEDIA_PREV        :: MEDIA_PREV;
    RETROK_MEDIA_STOP        :: MEDIA_STOP;
    RETROK_MEDIA_PLAY_PAUSE  :: MEDIA_PLAY_PAUSE;
    RETROK_LAUNCH_MAIL       :: LAUNCH_MAIL;
    RETROK_LAUNCH_MEDIA      :: LAUNCH_MEDIA;
    RETROK_LAUNCH_APP1       :: LAUNCH_APP1;
    RETROK_LAUNCH_APP2       :: LAUNCH_APP2;

    RETROK_LAST              :: LAST;

    RETROK_DUMMY             :: DUMMY;
}

mod :: enum u32 {
    NONE      :: 0;

    SHIFT     :: 1;
    CTRL      :: 2;
    ALT       :: 4;
    META      :: 8;

    NUMLOCK   :: 16;
    CAPSLOCK  :: 32;
    SCROLLOCK :: 64;

    DUMMY     :: 2147483647;

    RETROKMOD_NONE      :: NONE;

    RETROKMOD_SHIFT     :: SHIFT;
    RETROKMOD_CTRL      :: CTRL;
    RETROKMOD_ALT       :: ALT;
    RETROKMOD_META      :: META;

    RETROKMOD_NUMLOCK   :: NUMLOCK;
    RETROKMOD_CAPSLOCK  :: CAPSLOCK;
    RETROKMOD_SCROLLOCK :: SCROLLOCK;

    RETROKMOD_DUMMY     :: DUMMY;
}

/**
* Opaque file handle.
* @since VFS API v1
*/
vfs_file_handle :: struct {}

/**
* Opaque directory handle.
* @since VFS API v3
*/
vfs_dir_handle :: struct {}

/**
* Returns the path that was used to open this file.
*
* @param stream The opened file handle to get the path of.
* Behavior is undefined if \c NULL or closed.
* @return The path that was used to open \c stream.
* The string is owned by \c stream and must not be modified.
* @since VFS API v1
* @see filestream_get_path
*/
vfs_get_path_t :: #type (stream: *vfs_file_handle) -> *u8 #c_call;

/**
* Open a file for reading or writing.
*
* @param path The path to open.
* @param mode A bitwise combination of \c RETRO_VFS_FILE_ACCESS flags.
* At a minimum, one of \c RETRO_VFS_FILE_ACCESS_READ or \c RETRO_VFS_FILE_ACCESS_WRITE must be specified.
* @param hints A bitwise combination of \c RETRO_VFS_FILE_ACCESS_HINT flags.
* @return A handle to the opened file,
* or \c NULL upon failure.
* Note that this will return \c NULL if \c path names a directory.
* The returned file handle must be closed with \c retro_vfs_close_t.
* @since VFS API v1
* @see File Paths
* @see RETRO_VFS_FILE_ACCESS
* @see RETRO_VFS_FILE_ACCESS_HINT
* @see retro_vfs_close_t
* @see filestream_open
*/
vfs_open_t :: #type (path: *u8, mode: u32, hints: u32) -> *vfs_file_handle #c_call;

/**
* Close the file and release its resources.
* All files returned by \c retro_vfs_open_t must be closed with this function.
*
* @param stream The file handle to close.
* Behavior is undefined if already closed.
* Upon completion of this function, \c stream is no longer valid
* (even if it returns failure).
* @return 0 on success, -1 on failure or if \c stream is \c NULL.
* @see retro_vfs_open_t
* @see filestream_close
* @since VFS API v1
*/
vfs_close_t :: #type (stream: *vfs_file_handle) -> s32 #c_call;

/**
* Return the size of the file in bytes.
*
* @param stream The file to query the size of.
* @return Size of the file in bytes, or -1 if there was an error.
* @see filestream_get_size
* @since VFS API v1
*/
vfs_size_t :: #type (stream: *vfs_file_handle) -> s64 #c_call;

/**
* Set the file's length.
*
* @param stream The file whose length will be adjusted.
* @param length The new length of the file, in bytes.
* If shorter than the original length, the extra bytes will be discarded.
* If longer, the file's padding is unspecified (and likely platform-dependent).
* @return 0 on success,
* -1 on failure.
* @see filestream_truncate
* @since VFS API v2
*/
vfs_truncate_t :: #type (stream: *vfs_file_handle, length: s64) -> s64 #c_call;

/**
* Gets the given file's current read/write position.
* This position is advanced with each call to \c retro_vfs_read_t or \c retro_vfs_write_t.
*
* @param stream The file to query the position of.
* @return The current stream position in bytes
* or -1 if there was an error.
* @see filestream_tell
* @since VFS API v1
*/
vfs_tell_t :: #type (stream: *vfs_file_handle) -> s64 #c_call;

/**
* Sets the given file handle's current read/write position.
*
* @param stream The file to set the position of.
* @param offset The new position, in bytes.
* @param seek_position The position to seek from.
* @return The new position,
* or -1 if there was an error.
* @since VFS API v1
* @see File Seek Positions
* @see filestream_seek
*/
vfs_seek_t :: #type (stream: *vfs_file_handle, offset: s64, seek_position: s32) -> s64 #c_call;

/**
* Read data from a file, if it was opened for reading.
*
* @param stream The file to read from.
* @param s The buffer to read into.
* @param len The number of bytes to read.
* The buffer pointed to by \c s must be this large.
* @return The number of bytes read,
* or -1 if there was an error.
* @since VFS API v1
* @see filestream_read
*/
vfs_read_t :: #type (stream: *vfs_file_handle, s: *void, len: u64) -> s64 #c_call;

/**
* Write data to a file, if it was opened for writing.
*
* @param stream The file handle to write to.
* @param s The buffer to write from.
* @param len The number of bytes to write.
* The buffer pointed to by \c s must be this large.
* @return The number of bytes written,
* or -1 if there was an error.
* @since VFS API v1
* @see filestream_write
*/
vfs_write_t :: #type (stream: *vfs_file_handle, s: *void, len: u64) -> s64 #c_call;

/**
* Flush pending writes to the file, if applicable.
*
* This does not mean that the changes will be immediately persisted to disk;
* that may be scheduled for later, depending on the platform.
*
* @param stream The file handle to flush.
* @return 0 on success, -1 on failure.
* @since VFS API v1
* @see filestream_flush
*/
vfs_flush_t :: #type (stream: *vfs_file_handle) -> s32 #c_call;

/**
* Deletes the file at the given path.
*
* @param path The path to the file that will be deleted.
* @return 0 on success, -1 on failure.
* @see filestream_delete
* @since VFS API v1
*/
vfs_remove_t :: #type (path: *u8) -> s32 #c_call;

/**
* Rename the specified file.
*
* @param old_path Path to an existing file.
* @param new_path The destination path.
* Must not name an existing file.
* @return 0 on success, -1 on failure
* @see filestream_rename
* @since VFS API v1
*/
vfs_rename_t :: #type (old_path: *u8, new_path: *u8) -> s32 #c_call;

/**
* Gets information about the given file.
*
* @param path The path to the file to query.
* @param[out] size The reported size of the file in bytes.
* May be \c NULL, in which case this value is ignored.
* @return A bitmask of \c RETRO_VFS_STAT flags,
* or 0 if \c path doesn't refer to a valid file.
* @see path_stat
* @see path_get_size
* @see RETRO_VFS_STAT
* @since VFS API v3
*/
vfs_stat_t :: #type (path: *u8, size: *s32) -> s32 #c_call;

/**
* Creates a directory at the given path.
*
* @param dir The desired location of the new directory.
* @return 0 if the directory was created,
* -2 if the directory already exists,
* or -1 if some other error occurred.
* @see path_mkdir
* @since VFS API v3
*/
vfs_mkdir_t :: #type (dir: *u8) -> s32 #c_call;

/**
* Opens a handle to a directory so its contents can be inspected.
*
* @param dir The path to the directory to open.
* Must be an existing directory.
* @param include_hidden Whether to include hidden files in the directory listing.
* The exact semantics of this flag will depend on the platform.
* @return A handle to the opened directory,
* or \c NULL if there was an error.
* @see retro_opendir
* @since VFS API v3
*/
vfs_opendir_t :: #type (dir: *u8, include_hidden: bool) -> *vfs_dir_handle #c_call;

/**
* Gets the next dirent ("directory entry")
* within the given directory.
*
* @param[in,out] dirstream The directory to read from.
* Updated to point to the next file, directory, or other path.
* @return \c true when the next dirent was retrieved,
* \c false if there are no more dirents to read.
* @note This API iterates over all files and directories within \c dirstream.
* Remember to check what the type of the current dirent is.
* @note This function does not recurse,
* i.e. it does not return the contents of subdirectories.
* @note This may include "." and ".." on Unix-like platforms.
* @see retro_readdir
* @see retro_vfs_dirent_is_dir_t
* @since VFS API v3
*/
vfs_readdir_t :: #type (dirstream: *vfs_dir_handle) -> bool #c_call;

/**
* Gets the filename of the current dirent.
*
* The returned string pointer is valid
* until the next call to \c retro_vfs_readdir_t or \c retro_vfs_closedir_t.
*
* @param dirstream The directory to read from.
* @return The current dirent's name,
* or \c NULL if there was an error.
* @note This function only returns the file's \em name,
* not a complete path to it.
* @see retro_dirent_get_name
* @since VFS API v3
*/
vfs_dirent_get_name_t :: #type (dirstream: *vfs_dir_handle) -> *u8 #c_call;

/**
* Checks whether the current dirent names a directory.
*
* @param dirstream The directory to read from.
* @return \c true if \c dirstream's current dirent points to a directory,
* \c false if not or if there was an error.
* @see retro_dirent_is_dir
* @since VFS API v3
*/
vfs_dirent_is_dir_t :: #type (dirstream: *vfs_dir_handle) -> bool #c_call;

/**
* Closes the given directory and release its resources.
*
* Must be called on any \c retro_vfs_dir_handle returned by \c retro_vfs_open_t.
*
* @param dirstream The directory to close.
* When this function returns (even failure),
* \c dirstream will no longer be valid and must not be used.
* @return 0 on success, -1 on failure.
* @see retro_closedir
* @since VFS API v3
*/
vfs_closedir_t :: #type (dirstream: *vfs_dir_handle) -> s32 #c_call;

/**
* File system interface exposed by the frontend.
*
* @see dirent_vfs_init
* @see filestream_vfs_init
* @see path_vfs_init
* @see RETRO_ENVIRONMENT_GET_VFS_INTERFACE
*/
vfs_interface :: struct {
    /* VFS API v1 */
    /** @copydoc retro_vfs_get_path_t */
    get_path:        vfs_get_path_t;

    /** @copydoc retro_vfs_open_t */
    open:            vfs_open_t;

    /** @copydoc retro_vfs_close_t */
    close:           vfs_close_t;

    /** @copydoc retro_vfs_size_t */
    size:            vfs_size_t;

    /** @copydoc retro_vfs_tell_t */
    tell:            vfs_tell_t;

    /** @copydoc retro_vfs_seek_t */
    seek:            vfs_seek_t;

    /** @copydoc retro_vfs_read_t */
    read:            vfs_read_t;

    /** @copydoc retro_vfs_write_t */
    write:           vfs_write_t;

    /** @copydoc retro_vfs_flush_t */
    flush:           vfs_flush_t;

    /** @copydoc retro_vfs_remove_t */
    _remove:         vfs_remove_t;

    /** @copydoc retro_vfs_rename_t */
    rename:          vfs_rename_t;

    /** @copydoc retro_vfs_truncate_t */
    truncate:        vfs_truncate_t;

    /** @copydoc retro_vfs_stat_t */
    stat:            vfs_stat_t;

    /** @copydoc retro_vfs_mkdir_t */
    mkdir:           vfs_mkdir_t;

    /** @copydoc retro_vfs_opendir_t */
    opendir:         vfs_opendir_t;

    /** @copydoc retro_vfs_readdir_t */
    readdir:         vfs_readdir_t;

    /** @copydoc retro_vfs_dirent_get_name_t */
    dirent_get_name: vfs_dirent_get_name_t;

    /** @copydoc retro_vfs_dirent_is_dir_t */
    dirent_is_dir:   vfs_dirent_is_dir_t;

    /** @copydoc retro_vfs_closedir_t */
    closedir:        vfs_closedir_t;
}

/**
* Represents a request by the core for the frontend's file system interface,
* as well as the interface itself returned by the frontend.
*
* You do not need to use these functions directly;
* you may pass this struct to \c dirent_vfs_init,
* \c filestream_vfs_init, or \c path_vfs_init
* so that you can use the wrappers provided by these modules.
*
* @see dirent_vfs_init
* @see filestream_vfs_init
* @see path_vfs_init
* @see RETRO_ENVIRONMENT_GET_VFS_INTERFACE
*/
vfs_interface_info :: struct {
    /**
    * The minimum version of the VFS API that the core requires.
    * libretro-common's wrapper API initializers will check this value as well.
    *
    * Set to the core's desired VFS version when requesting an interface,
    * and set by the frontend to indicate its actual API version.
    *
    * If the core asks for a newer VFS API version than the frontend supports,
    * the frontend must return \c false within the \c RETRO_ENVIRONMENT_GET_VFS_INTERFACE call.
    * @since VFS API v1
    */
    required_interface_version: u32;

    /**
    * Set by the frontend.
    * The frontend will set this to the VFS interface it provides.
    *
    * The interface is owned by the frontend
    * and must not be modified or freed by the core.
    * @since VFS API v1 */
    iface:                      *vfs_interface;
}

/**
* Describes the hardware rendering API supported by
* a particular subtype of \c retro_hw_render_interface.
*
* Not every rendering API supported by libretro has its own interface,
* or even needs one.
*
* @see RETRO_ENVIRONMENT_SET_HW_RENDER
* @see RETRO_ENVIRONMENT_GET_HW_RENDER_INTERFACE
*/
hw_render_interface_type :: enum u32 {
    VULKAN    :: 0;

    D3D9      :: 1;

    D3D10     :: 2;

    D3D11     :: 3;

    D3D12     :: 4;

    GSKIT_PS2 :: 5;

    DUMMY     :: 2147483647;

    RETRO_HW_RENDER_INTERFACE_VULKAN    :: VULKAN;

    RETRO_HW_RENDER_INTERFACE_D3D9      :: D3D9;

    RETRO_HW_RENDER_INTERFACE_D3D10     :: D3D10;

    RETRO_HW_RENDER_INTERFACE_D3D11     :: D3D11;

    RETRO_HW_RENDER_INTERFACE_D3D12     :: D3D12;

    RETRO_HW_RENDER_INTERFACE_GSKIT_PS2 :: GSKIT_PS2;

    RETRO_HW_RENDER_INTERFACE_DUMMY     :: DUMMY;
}

/**
* Base render interface type.
* All \c retro_hw_render_interface implementations
* will start with these two fields set to particular values.
*
* @see retro_hw_render_interface_type
* @see RETRO_ENVIRONMENT_SET_HW_RENDER
* @see RETRO_ENVIRONMENT_GET_HW_RENDER_INTERFACE
*/
hw_render_interface :: struct {
    /**
    * Denotes the particular rendering API that this interface is for.
    * Each interface requires this field to be set to a particular value.
    * Use it to cast this interface to the appropriate pointer.
    */
    interface_type:    hw_render_interface_type;

    /**
    * The version of this rendering interface.
    * @note This is not related to the version of the API itself.
    */
    interface_version: u32;
}

/** @copydoc retro_led_interface::set_led_state */
set_led_state_t :: #type (led: s32, state: s32) -> void #c_call;

/**
* Interface that the core can use to set the state of available LEDs.
* @see RETRO_ENVIRONMENT_GET_LED_INTERFACE
*/
led_interface :: struct {
    /**
    * Sets the state of an LED.
    *
    * @param led The LED to set the state of.
    * @param state The state to set the LED to.
    * \c true to enable, \c false to disable.
    */
    set_led_state: set_led_state_t;
}

/**
* Flags that define A/V steps that the core may skip for this frame.
*
* @see RETRO_ENVIRONMENT_GET_AUDIO_VIDEO_ENABLE
*/
av_enable_flags :: enum u32 {
    VIDEO              :: 1;

    AUDIO              :: 2;

    FAST_SAVESTATES    :: 4;

    HARD_DISABLE_AUDIO :: 8;

    DUMMY              :: 2147483647;

    RETRO_AV_ENABLE_VIDEO              :: VIDEO;

    RETRO_AV_ENABLE_AUDIO              :: AUDIO;

    RETRO_AV_ENABLE_FAST_SAVESTATES    :: FAST_SAVESTATES;

    RETRO_AV_ENABLE_HARD_DISABLE_AUDIO :: HARD_DISABLE_AUDIO;

    RETRO_AV_ENABLE_DUMMY              :: DUMMY;
}

/** @copydoc retro_midi_interface::input_enabled */
midi_input_enabled_t :: #type () -> bool #c_call;

/** @copydoc retro_midi_interface::output_enabled */
midi_output_enabled_t :: #type () -> bool #c_call;

/** @copydoc retro_midi_interface::read */
midi_read_t :: #type (byte: *u8) -> bool #c_call;

/** @copydoc retro_midi_interface::write */
midi_write_t :: #type (byte: u8, delta_time: u32) -> bool #c_call;

/** @copydoc retro_midi_interface::flush */
midi_flush_t :: #type () -> bool #c_call;

/**
* Interface that the core can use for raw MIDI I/O.
*/
midi_interface :: struct {
    /**
    * Retrieves the current state of MIDI input.
    *
    * @return \c true if MIDI input is enabled.
    */
    input_enabled:  midi_input_enabled_t;

    /**
    * Retrieves the current state of MIDI output.
    * @return \c true if MIDI output is enabled.
    */
    output_enabled: midi_output_enabled_t;

    /**
    * Reads a byte from the MIDI input stream.
    *
    * @param[out] byte The byte received from the input stream.
    * @return \c true if a byte was read,
    * \c false if MIDI input is disabled or \c byte is \c NULL.
    */
    read:           midi_read_t;

    /**
    * Writes a byte to the output stream.
    *
    * @param byte The byte to write to the output stream.
    * @param delta_time Time since the previous write, in microseconds.
    * @return \c true if c\ byte was written, false otherwise.
    */
    write:          midi_write_t;

    /**
    * Flushes previously-written data.
    *
    * @return \c true if successful.
    */
    flush:          midi_flush_t;
}

/**
* Describes the hardware rendering API used by
* a particular subtype of \c retro_hw_render_context_negotiation_interface.
*
* Not every rendering API supported by libretro has a context negotiation interface,
* or even needs one.
*
* @see RETRO_ENVIRONMENT_SET_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE
* @see RETRO_ENVIRONMENT_SET_HW_RENDER
* @see RETRO_ENVIRONMENT_GET_HW_RENDER_INTERFACE
*/
hw_render_context_negotiation_interface_type :: enum u32 {
    VULKAN :: 0;

    DUMMY  :: 2147483647;

    RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN :: VULKAN;

    RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_DUMMY  :: DUMMY;
}

/**
* Base context negotiation interface type.
* All \c retro_hw_render_context_negotiation_interface implementations
* will start with these two fields set to particular values.
*
* @see retro_hw_render_interface_type
* @see RETRO_ENVIRONMENT_SET_HW_RENDER
* @see RETRO_ENVIRONMENT_GET_HW_RENDER_INTERFACE
* @see RETRO_ENVIRONMENT_SET_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE
*/
hw_render_context_negotiation_interface :: struct {
    /**
    * Denotes the particular rendering API that this interface is for.
    * Each interface requires this field to be set to a particular value.
    * Use it to cast this interface to the appropriate pointer.
    */
    interface_type:    hw_render_context_negotiation_interface_type;

    /**
    * The version of this negotiation interface.
    * @note This is not related to the version of the API itself.
    */
    interface_version: u32;
}

/**
* A mapping from a region of the emulated console's address space
* to the host's address space.
*
* Can be used to map an address in the console's address space
* to the host's address space, like so:
*
* @code
* void* emu_to_host(void* addr, struct retro_memory_descriptor* descriptor)
* {
*     return descriptor->ptr + (addr & ~descriptor->disconnect) - descriptor->start;
* }
* @endcode
*
* @see RETRO_ENVIRONMENT_SET_MEMORY_MAPS
*/
memory_descriptor :: struct {
    /**
    * A bitwise \c OR of one or more \ref RETRO_MEMDESC "flags"
    * that describe how the emulated system uses this descriptor's address range.
    *
    * @note If \c ptr is \c NULL,
    * then no flags should be set.
    * @see RETRO_MEMDESC
    */
    flags:      u64;

    /**
    * Pointer to the start of this memory region's buffer
    * within the \em host's address space.
    * The address listed here must be valid for the duration of the session;
    * it must not be freed or modified by the frontend
    * and it must not be moved by the core.
    *
    * May be \c NULL to indicate a lack of accessible memory
    * at the emulated address given in \c start.
    *
    * @note Overlapping descriptors that include the same byte
    * must have the same \c ptr value.
    */
    ptr:        *void;

    /**
    * The offset of this memory region,
    * relative to the address given by \c ptr.
    *
    * @note It is recommended to use this field for address calculations
    * instead of performing arithmetic on \c ptr.
    */
    offset:     u64;

    /**
    * The starting address of this memory region
    * <em>within the emulated hardware's address space</em>.
    *
    * @note Not represented as a pointer
    * because it's unlikely to be valid on the host device.
    */
    start:      u64;

    /**
    * A bitmask that specifies which bits of an address must match
    * the bits of the \ref start address.
    *
    * Combines with \c disconnect to map an address to a memory block.
    *
    * If multiple memory descriptors can claim a particular byte,
    * the first one defined in the \ref retro_memory_descriptor array applies.
    * A bit which is set in \c start must also be set in this.
    *
    * Can be zero, in which case \c start and \c len represent
    * the complete mapping for this region of memory
    * (i.e. each byte is mapped exactly once).
    * In this case, \c len must be a power of two.
    */
    select:     u64;

    /**
    * A bitmask of bits that are \em not used for addressing.
    *
    * Any set bits are assumed to be disconnected from
    * the emulated memory chip's address pins,
    * and are therefore ignored when memory-mapping.
    */
    disconnect: u64;

    /**
    * The length of this memory region, in bytes.
    *
    * If applying \ref start and \ref disconnect to an address
    * results in a value higher than this,
    * the highest bit of the address is cleared.
    *
    * If the address is still too high, the next highest bit is cleared.
    * Can be zero, in which case it's assumed to be
    * bounded only by \ref select and \ref disconnect.
    */
    len:        u64;

    /**
    * A short name for this address space.
    *
    * Names must meet the following requirements:
    *
    * \li Characters must be in the set <tt>[a-zA-Z0-9_-]</tt>.
    * \li No more than 8 characters, plus a \c NULL terminator.
    * \li Names are case-sensitive, but lowercase characters are discouraged.
    * \li A name must not be the same as another name plus a character in the set \c [A-F0-9]
    *     (i.e. if an address space named "RAM" exists,
    *     then the names "RAM0", "RAM1", ..., "RAMF" are forbidden).
    *     This is to allow addresses to be named by each descriptor unambiguously,
    *     even if the areas overlap.
    * \li May be \c NULL or empty (both are considered equivalent).
    *
    * Here are some examples of pairs of address space names:
    *
    * \li \em blank + \em blank: valid (multiple things may be mapped in the same namespace)
    * \li \c Sp + \c Sp: valid (multiple things may be mapped in the same namespace)
    * \li \c SRAM + \c VRAM: valid (neither is a prefix of the other)
    * \li \c V + \em blank: valid (\c V is not in \c [A-F0-9])
    * \li \c a + \em blank: valid but discouraged (\c a is not in \c [A-F0-9])
    * \li \c a + \c A: valid but discouraged (neither is a prefix of the other)
    * \li \c AR + \em blank: valid (\c R is not in \c [A-F0-9])
    * \li \c ARB + \em blank: valid (there's no \c AR namespace,
    *     so the \c B doesn't cause ambiguity).
    * \li \em blank + \c B: invalid, because it's ambiguous which address space \c B1234 would refer to.
    *
    * The length of the address space's name can't be used to disambugiate,
    * as extra information may be appended to it without a separator.
    */
    addrspace:  *u8;
}

/**
* A list of regions within the emulated console's address space.
*
* The frontend may use the largest value of
* \ref retro_memory_descriptor::start + \ref retro_memory_descriptor::select
* in a certain namespace to infer the overall size of the address space.
* If the address space is larger than that,
* the last mapping in \ref descriptors should have \ref retro_memory_descriptor::ptr set to \c NULL
* and \ref retro_memory_descriptor::select should have all bits used in the address space set to 1.
*
* Here's an example set of descriptors for the SNES.
*
* @code{.c}
* struct retro_memory_map snes_descriptors = retro_memory_map
* {
*    .descriptors = (struct retro_memory_descriptor[])
*    {
*       // WRAM; must usually be mapped before the ROM,
*       // as some SNES ROM mappers try to claim 0x7E0000
*       { .addrspace="WRAM", .start=0x7E0000, .len=0x20000 },
*
*       // SPC700 RAM
*       { .addrspace="SPC700", .len=0x10000 },
*
*       // WRAM mirrors
*       { .addrspace="WRAM", .start=0x000000, .select=0xC0E000, .len=0x2000 },
*       { .addrspace="WRAM", .start=0x800000, .select=0xC0E000, .len=0x2000 },
*
*       // WRAM mirror, alternate equivalent descriptor
*       // (Various similar constructions can be created by combining parts of the above two.)
*       { .addrspace="WRAM", .select=0x40E000, .disconnect=~0x1FFF },
*
*       // LoROM (512KB, mirrored a couple of times)
*       { .addrspace="LoROM", .start=0x008000, .select=0x408000, .disconnect=0x8000, .len=512*1024, .flags=RETRO_MEMDESC_CONST },
*       { .addrspace="LoROM", .start=0x400000, .select=0x400000, .disconnect=0x8000, .len=512*1024, .flags=RETRO_MEMDESC_CONST },
*
*       // HiROM (4MB)
*       { .addrspace="HiROM", .start=0x400000, .select=0x400000, .len=4*1024*1024, .flags=RETRO_MEMDESC_CONST },
*       { .addrspace="HiROM", .start=0x008000, .select=0x408000, .len=4*1024*1024, .offset=0x8000, .flags=RETRO_MEMDESC_CONST },
*
*       // ExHiROM (8MB)
*       { .addrspace="ExHiROM", .start=0xC00000, .select=0xC00000, .len=4*1024*1024, .offset=0, .flags=RETRO_MEMDESC_CONST },
*       { .addrspace="ExHiROM", .start=0x400000, .select=0xC00000, .len=4*1024*1024, .offset=4*1024*1024, .flags=RETRO_MEMDESC_CONST },
*       { .addrspace="ExHiROM", .start=0x808000, .select=0xC08000, .len=4*1024*1024, .offset=0x8000, .flags=RETRO_MEMDESC_CONST },
*       { .addrspace="ExHiROM", .start=0x008000, .select=0xC08000, .len=4*1024*1024, .offset=4*1024*1024+0x8000, .flags=RETRO_MEMDESC_CONST },
*
*       // Clarifying the full size of the address space
*       { .select=0xFFFFFF, .ptr=NULL },
*    },
*    .num_descriptors = 14,
* };
* @endcode
*
* @see RETRO_ENVIRONMENT_SET_MEMORY_MAPS
*/
memory_map :: struct {
    /**
    * Pointer to an array of memory descriptors,
    * each of which describes part of the emulated console's address space.
    */
    descriptors:     *memory_descriptor;

    /** The number of descriptors in \c descriptors. */
    num_descriptors: u32;
}

/**
* Details about a controller (or controller configuration)
* supported by one of a core's emulated input ports.
*
* @see RETRO_ENVIRONMENT_SET_CONTROLLER_INFO
*/
controller_description :: struct {
    /**
    * A human-readable label for the controller or configuration
    * represented by this device type.
    * Most likely the device's original brand name.
    */
    desc: *u8;

    /**
    * A unique identifier that will be passed to \c retro_set_controller_port_device()'s \c device parameter.
    * May be the ID of one of \ref RETRO_DEVICE "the generic controller types",
    * or a subclass ID defined with \c RETRO_DEVICE_SUBCLASS.
    *
    * @see RETRO_DEVICE_SUBCLASS
    */
    id:   u32;
}

/**
* Lists the types of controllers supported by
* one of core's emulated input ports.
*
* @see RETRO_ENVIRONMENT_SET_CONTROLLER_INFO
*/
controller_info :: struct {
    /**
    * A pointer to an array of device types supported by this controller port.
    *
    * @note Ports that support the same devices
    * may share the same underlying array.
    */
    types:     *controller_description;

    /** The number of elements in \c types. */
    num_types: u32;
}

/**
* Information about a type of memory associated with a subsystem.
* Usually used for SRAM (save RAM).
*
* @see RETRO_ENVIRONMENT_SET_SUBSYSTEM_INFO
* @see retro_get_memory_data
* @see retro_get_memory_size
*/
subsystem_memory_info :: struct {
    /**
    * The file extension the frontend should use
    * to save this memory region to disk, e.g. "srm" or "sav".
    */
    extension: *u8;

    /**
    * A constant that identifies this type of memory.
    * Should be at least 0x100 (256) to avoid conflict
    * with the standard libretro memory types,
    * unless a subsystem uses the main platform's memory region.
    * @see RETRO_MEMORY
    */
    type:      u32;
}

/**
* Information about a type of ROM that a subsystem may use.
* Subsystems may use one or more ROMs at once,
* possibly of different types.
*
* @see RETRO_ENVIRONMENT_SET_SUBSYSTEM_INFO
* @see retro_subsystem_info
*/
subsystem_rom_info :: struct {
    /**
    * Human-readable description of what the content represents,
    * e.g. "Game Boy ROM".
    */
    desc:             *u8;

    /** @copydoc retro_system_info::valid_extensions */
    valid_extensions: *u8;

    /** @copydoc retro_system_info::need_fullpath */
    need_fullpath:    bool;

    /** @copydoc retro_system_info::block_extract */
    block_extract:    bool;

    /**
    * Indicates whether this particular subsystem ROM is required.
    * If \c true and the user doesn't provide a ROM,
    * the frontend should not load the core.
    * If \c false and the user doesn't provide a ROM,
    * the frontend should pass a zeroed-out \c retro_game_info
    * to the corresponding entry in \c retro_load_game_special().
    */
    required:         bool;

    /**
    * Pointer to an array of memory descriptors that this subsystem ROM type uses.
    * Useful for secondary cartridges that have their own save data.
    * May be \c NULL, in which case this subsystem ROM's memory is not persisted by the frontend
    * and \c num_memory should be zero.
    */
    memory:           *subsystem_memory_info;

    /** The number of elements in the array pointed to by \c memory. */
    num_memory:       u32;
}

/**
* Information about a secondary platform that a core supports.
* @see RETRO_ENVIRONMENT_SET_SUBSYSTEM_INFO
*/
subsystem_info :: struct {
    /**
    * A human-readable description of the subsystem type,
    * usually the brand name of the original platform
    * (e.g. "Super Game Boy").
    */
    desc:     *u8;

    /**
    * A short machine-friendly identifier for the subsystem,
    * usually an abbreviation of the platform name.
    * For example, a Super Game Boy subsystem for a SNES core
    * might use an identifier of "sgb".
    * This identifier can be used for command-line interfaces,
    * configuration, or other purposes.
    * Must use lower-case alphabetical characters only (i.e. from a-z).
    */
    ident:    *u8;

    /**
    * The list of ROM types that this subsystem may use.
    *
    * The first entry is considered to be the "most significant" content,
    * for the purposes of the frontend's categorization.
    * E.g. with Super GameBoy, the first content should be the GameBoy ROM,
    * as it is the most "significant" content to a user.
    *
    * If a frontend creates new files based on the content used (e.g. for savestates),
    * it should derive the filenames from the name of the first ROM in this list.
    *
    * @note \c roms can have a single element,
    * but this is usually a sign that the core should broaden its
    * primary system info instead.
    *
    * @see \c retro_system_info
    */
    roms:     *subsystem_rom_info;

    /** The length of the array given in \c roms. */
    num_roms: u32;

    /** A unique identifier passed to retro_load_game_special(). */
    id:       u32;
}

/**
* The function pointer type that \c retro_get_proc_address_t returns.
*
* Despite the signature shown here, the original function may include any parameters and return type
* that respects the calling convention and C ABI.
*
* The frontend is expected to cast the function pointer to the correct type.
*/
proc_address_t :: #type () -> void #c_call;

/**
* Get a symbol from a libretro core.
*
* Cores should only return symbols that serve as libretro extensions.
* Frontends should not use this to obtain symbols to standard libretro entry points;
* instead, they should link to the core statically or use \c dlsym (or local equivalent).
*
* The symbol name must be equal to the function name.
* e.g. if <tt>void retro_foo(void);</tt> exists, the symbol in the compiled library must be called \c retro_foo.
* The returned function pointer must be cast to the corresponding type.
*
* @param \c sym The name of the symbol to look up.
* @return Pointer to the exposed function with the name given in \c sym,
* or \c NULL if one couldn't be found.
* @note The frontend is expected to know the returned pointer's type in advance
* so that it can be cast correctly.
* @note The core doesn't need to expose every possible function through this interface.
* It's enough to only expose the ones that it expects the frontend to use.
* @note The functions exposed through this interface
* don't need to be publicly exposed in the compiled library
* (e.g. via \c __declspec(dllexport)).
* @see RETRO_ENVIRONMENT_SET_PROC_ADDRESS_CALLBACK
*/
get_proc_address_t :: #type (sym: *u8) -> proc_address_t #c_call;

/**
* An interface that the frontend can use to get function pointers from the core.
*
* @note The returned function pointer will be invalidated once the core is unloaded.
* How and when that happens is up to the frontend.
*
* @see retro_get_proc_address_t
* @see RETRO_ENVIRONMENT_SET_PROC_ADDRESS_CALLBACK
*/
get_proc_address_interface :: struct {
    /** Set by the core. */
    get_proc_address: get_proc_address_t;
}

/**
* The severity of a given message.
* The frontend may log messages differently depending on the level.
* It may also ignore log messages of a certain level.
* @see retro_log_callback
*/
log_level :: enum u32 {
    DEBUG :: 0;

    INFO  :: 1;

    WARN  :: 2;

    ERROR :: 3;

    DUMMY :: 2147483647;

    RETRO_LOG_DEBUG :: DEBUG;

    RETRO_LOG_INFO  :: INFO;

    RETRO_LOG_WARN  :: WARN;

    RETRO_LOG_ERROR :: ERROR;

    RETRO_LOG_DUMMY :: DUMMY;
}

/**
* Logs a message to the frontend.
*
* @param level The log level of the message.
* @param fmt The format string to log.
* Same format as \c printf.
* Behavior is undefined if this is \c NULL.
* @param ... Zero or more arguments used by the format string.
* Behavior is undefined if these don't match the ones expected by \c fmt.
* @see retro_log_level
* @see retro_log_callback
* @see RETRO_ENVIRONMENT_GET_LOG_INTERFACE
* @see printf
*/
log_printf_t :: #type (level: log_level, fmt: *u8, __args: ..Any) -> void #c_call;

/**
* Details about how to make log messages.
*
* @see retro_log_printf_t
* @see RETRO_ENVIRONMENT_GET_LOG_INTERFACE
*/
log_callback :: struct {
    /**
    * Called when logging a message.
    *
    * @note Set by the frontend.
    */
    log: log_printf_t;
}

/**
* An abstract unit of ticks.
*
* Usually nanoseconds or CPU cycles,
* but it depends on the platform and the frontend.
*/
perf_tick_t :: u64;

/** Time in microseconds. */
time_t :: s64;

/**
* A performance counter.
*
* Use this to measure the execution time of a region of code.
* @see retro_perf_callback
*/
perf_counter :: struct {
    /**
    * A human-readable identifier for the counter.
    *
    * May be displayed by the frontend.
    * Behavior is undefined if this is \c NULL.
    */
    ident:      *u8;

    /**
    * The time of the most recent call to \c retro_perf_callback::perf_start
    * on this performance counter.
    *
    * @see retro_perf_start_t
    */
    start:      perf_tick_t;

    /**
    * The total time spent within this performance counter's measured code,
    * i.e. between calls to \c retro_perf_callback::perf_start and \c retro_perf_callback::perf_stop.
    *
    * Updated after each call to \c retro_perf_callback::perf_stop.
    * @see retro_perf_stop_t
    */
    total:      perf_tick_t;

    /**
    * The number of times this performance counter has been started.
    *
    * Updated after each call to \c retro_perf_callback::perf_start.
    * @see retro_perf_start_t
    */
    call_cnt:   perf_tick_t;

    /**
    * \c true if this performance counter has been registered by the frontend.
    * Must be initialized to \c false by the core before registering it.
    * @see retro_perf_register_t
    */
    registered: bool;
}

/**
* @returns The current system time in microseconds.
* @note Accuracy may vary by platform.
* The frontend should use the most accurate timer possible.
* @see RETRO_ENVIRONMENT_GET_PERF_INTERFACE
*/
perf_get_time_usec_t :: #type () -> time_t #c_call;

/**
* @returns The number of ticks since some unspecified epoch.
* The exact meaning of a "tick" depends on the platform,
* but it usually refers to nanoseconds or CPU cycles.
* @see RETRO_ENVIRONMENT_GET_PERF_INTERFACE
*/
perf_get_counter_t :: #type () -> perf_tick_t #c_call;

/**
* Returns a bitmask of detected CPU features.
*
* Use this for runtime dispatching of CPU-specific code.
*
* @returns A bitmask of detected CPU features.
* @see RETRO_ENVIRONMENT_GET_PERF_INTERFACE
* @see RETRO_SIMD
*/
get_cpu_features_t :: #type () -> u64 #c_call;

/**
* Asks the frontend to log or display the state of performance counters.
* How this is done depends on the frontend.
* Performance counters can be reviewed manually as well.
*
* @see RETRO_ENVIRONMENT_GET_PERF_INTERFACE
* @see retro_perf_counter
*/
perf_log_t :: #type () -> void #c_call;

/**
* Registers a new performance counter.
*
* If \c counter has already been registered beforehand,
* this function does nothing.
*
* @param counter The counter to register.
* \c counter::ident must be set to a unique identifier,
* and all other values in \c counter must be set to zero or \c false.
* Behavior is undefined if \c NULL.
* @post If \c counter is successfully registered,
* then \c counter::registered will be set to \c true.
* Otherwise, it will be set to \c false.
* Registration may fail if the frontend's maximum number of counters (if any) has been reached.
* @note The counter is owned by the core and must not be freed by the frontend.
* The frontend must also clean up any references to a core's performance counters
* before unloading it, otherwise undefined behavior may occur.
* @see retro_perf_start_t
* @see retro_perf_stop_t
*/
perf_register_t :: #type (counter: *perf_counter) -> void #c_call;

/**
* Starts a registered performance counter.
*
* Call this just before the code you want to measure.
*
* @param counter The counter to start.
* Behavior is undefined if \c NULL.
* @see retro_perf_stop_t
*/
perf_start_t :: #type (counter: *perf_counter) -> void #c_call;

/**
* Stops a registered performance counter.
*
* Call this just after the code you want to measure.
*
* @param counter The counter to stop.
* Behavior is undefined if \c NULL.
* @see retro_perf_start_t
* @see retro_perf_stop_t
*/
perf_stop_t :: #type (counter: *perf_counter) -> void #c_call;

/**
* An interface that the core can use to get performance information.
*
* Here's a usage example:
*
* @code{.c}
* #ifdef PROFILING
* // Wrapper macros to simplify using performance counters.
* // Optional; tailor these to your project's needs.
* #define RETRO_PERFORMANCE_INIT(perf_cb, name) static struct retro_perf_counter name = {#name}; if (!name.registered) perf_cb.perf_register(&(name))
* #define RETRO_PERFORMANCE_START(perf_cb, name) perf_cb.perf_start(&(name))
* #define RETRO_PERFORMANCE_STOP(perf_cb, name) perf_cb.perf_stop(&(name))
* #else
* // Exclude the performance counters if profiling is disabled.
* #define RETRO_PERFORMANCE_INIT(perf_cb, name) ((void)0)
* #define RETRO_PERFORMANCE_START(perf_cb, name) ((void)0)
* #define RETRO_PERFORMANCE_STOP(perf_cb, name) ((void)0)
* #endif
*
* // Defined somewhere else in the core.
* extern struct retro_perf_callback perf_cb;
*
* void retro_run(void)
* {
*    RETRO_PERFORMANCE_INIT(cb, interesting);
*    RETRO_PERFORMANCE_START(cb, interesting);
*    interesting_work();
*    RETRO_PERFORMANCE_STOP(cb, interesting);
*
*    RETRO_PERFORMANCE_INIT(cb, maybe_slow);
*    RETRO_PERFORMANCE_START(cb, maybe_slow);
*    more_interesting_work();
*    RETRO_PERFORMANCE_STOP(cb, maybe_slow);
* }
*
* void retro_deinit(void)
* {
*    // Asks the frontend to log the results of all performance counters.
*    perf_cb.perf_log();
* }
* @endcode
*
* All functions are set by the frontend.
*
* @see RETRO_ENVIRONMENT_GET_PERF_INTERFACE
*/
perf_callback :: struct {
    /** @copydoc retro_perf_get_time_usec_t */
    get_time_usec:    perf_get_time_usec_t;

    /** @copydoc retro_perf_get_counter_t */
    get_cpu_features: get_cpu_features_t;

    /** @copydoc retro_perf_get_counter_t */
    get_perf_counter: perf_get_counter_t;

    /** @copydoc retro_perf_register_t */
    perf_register:    perf_register_t;

    /** @copydoc retro_perf_start_t */
    perf_start:       perf_start_t;

    /** @copydoc retro_perf_stop_t */
    perf_stop:        perf_stop_t;

    /** @copydoc retro_perf_log_t */
    perf_log:         perf_log_t;
}

/**
* Defines actions that can be performed on sensors.
* @note Cores should only enable sensors while they're actively being used;
* depending on the frontend and platform,
* enabling these sensors may impact battery life.
*
* @see RETRO_ENVIRONMENT_GET_SENSOR_INTERFACE
* @see retro_sensor_interface
* @see retro_set_sensor_state_t
*/
sensor_action :: enum u32 {
    ACCELEROMETER_ENABLE  :: 0;

    ACCELEROMETER_DISABLE :: 1;

    GYROSCOPE_ENABLE      :: 2;

    GYROSCOPE_DISABLE     :: 3;

    ILLUMINANCE_ENABLE    :: 4;

    ILLUMINANCE_DISABLE   :: 5;

    DUMMY                 :: 2147483647;

    RETRO_SENSOR_ACCELEROMETER_ENABLE  :: ACCELEROMETER_ENABLE;

    RETRO_SENSOR_ACCELEROMETER_DISABLE :: ACCELEROMETER_DISABLE;

    RETRO_SENSOR_GYROSCOPE_ENABLE      :: GYROSCOPE_ENABLE;

    RETRO_SENSOR_GYROSCOPE_DISABLE     :: GYROSCOPE_DISABLE;

    RETRO_SENSOR_ILLUMINANCE_ENABLE    :: ILLUMINANCE_ENABLE;

    RETRO_SENSOR_ILLUMINANCE_DISABLE   :: ILLUMINANCE_DISABLE;

    RETRO_SENSOR_DUMMY                 :: DUMMY;
}

/**
* Adjusts the state of a sensor.
*
* @param port The device port of the controller that owns the sensor given in \c action.
* @param action The action to perform on the sensor.
* Different devices support different sensors.
* @param rate The rate at which the underlying sensor should be updated, in Hz.
* This should be treated as a hint,
* as some device sensors may not support the requested rate
* (if it's configurable at all).
* @returns \c true if the sensor state was successfully adjusted, \c false otherwise.
* @note If one of the \c RETRO_SENSOR_*_ENABLE actions fails,
* this likely means that the given sensor is not available
* on the provided \c port.
* @see retro_sensor_action
*/
set_sensor_state_t :: #type (port: u32, action: sensor_action, rate: u32) -> bool #c_call;

/**
* Retrieves the current value reported by sensor.
* @param port The device port of the controller that owns the sensor given in \c id.
* @param id The sensor value to query.
* @returns The current sensor value.
* Exact semantics depend on the value given in \c id,
* but will return 0 for invalid arguments.
*
* @see RETRO_SENSOR_ID
*/
sensor_get_input_t :: #type (port: u32, id: u32) -> float #c_call;

/**
* An interface that cores can use to access device sensors.
*
* All function pointers are set by the frontend.
*/
sensor_interface :: struct {
    /** @copydoc retro_set_sensor_state_t */
    set_sensor_state: set_sensor_state_t;

    /** @copydoc retro_sensor_get_input_t */
    get_sensor_input: sensor_get_input_t;
}

/**
* Denotes the type of buffer in which the camera will store its input.
*
* Different camera drivers may support different buffer types.
*
* @see RETRO_ENVIRONMENT_GET_CAMERA_INTERFACE
* @see retro_camera_callback
*/
camera_buffer :: enum u32 {
    OPENGL_TEXTURE  :: 0;

    RAW_FRAMEBUFFER :: 1;

    DUMMY           :: 2147483647;

    RETRO_CAMERA_BUFFER_OPENGL_TEXTURE  :: OPENGL_TEXTURE;

    RETRO_CAMERA_BUFFER_RAW_FRAMEBUFFER :: RAW_FRAMEBUFFER;

    RETRO_CAMERA_BUFFER_DUMMY           :: DUMMY;
}

/**
* Starts an initialized camera.
* The camera is disabled by default,
* and must be enabled with this function before being used.
*
* Set by the frontend.
*
* @returns \c true if the camera was successfully started, \c false otherwise.
* Failure may occur if no actual camera is available,
* or if the frontend doesn't have permission to access it.
* @note Must be called in \c retro_run().
* @see retro_camera_callback
*/
camera_start_t :: #type () -> bool #c_call;

/**
* Stops the running camera.
*
* Set by the frontend.
*
* @note Must be called in \c retro_run().
* @warning The frontend may close the camera on its own when unloading the core,
* but this behavior is not guaranteed.
* Cores should clean up the camera before exiting.
* @see retro_camera_callback
*/
camera_stop_t :: #type () -> void #c_call;

/**
* Called by the frontend to report the state of the camera driver.
*
* @see retro_camera_callback
*/
camera_lifetime_status_t :: #type () -> void #c_call;

/**
* Called by the frontend to report a new camera frame,
* delivered as a raw buffer in memory.
*
* Set by the core.
*
* @param buffer Pointer to the camera's most recent video frame.
* Each pixel is in XRGB8888 format.
* The first pixel represents the top-left corner of the image
* (i.e. the Y axis goes downward).
* @param width The width of the frame given in \c buffer, in pixels.
* @param height The height of the frame given in \c buffer, in pixels.
* @param pitch The width of the frame given in \c buffer, in bytes.
* @warning \c buffer may be invalidated when this function returns,
* so the core should make its own copy of \c buffer if necessary.
* @see RETRO_CAMERA_BUFFER_RAW_FRAMEBUFFER
*/
camera_frame_raw_framebuffer_t :: #type (buffer: *u32, width: u32, height: u32, pitch: u64) -> void #c_call;

/**
* Called by the frontend to report a new camera frame,
* delivered as an OpenGL texture.
*
* @param texture_id The ID of the OpenGL texture that represents the camera's most recent frame.
* Owned by the frontend, and must not be modified by the core.
* @param texture_target The type of the texture given in \c texture_id.
* Usually either \c GL_TEXTURE_2D or \c GL_TEXTURE_RECTANGLE,
* but other types are allowed.
* @param affine A pointer to a 3x3 column-major affine matrix
* that can be used to transform pixel coordinates to texture coordinates.
* After transformation, the bottom-left corner should have coordinates of <tt>(0, 0)</tt>
* and the top-right corner should have coordinates of <tt>(1, 1)</tt>
* (or <tt>(width, height)</tt> for \c GL_TEXTURE_RECTANGLE).
*
* @note GL-specific typedefs (e.g. \c GLfloat and \c GLuint) are avoided here
* so that the API doesn't rely on gl.h.
* @warning \c texture_id and \c affine may be invalidated when this function returns,
* so the core should make its own copy of them if necessary.
*/
camera_frame_opengl_texture_t :: #type (texture_id: u32, texture_target: u32, affine: *float) -> void #c_call;

/**
* An interface that the core can use to access a device's camera.
*
* @see RETRO_ENVIRONMENT_GET_CAMERA_INTERFACE
*/
camera_callback :: struct {
    /**
    * Requested camera capabilities,
    * given as a bitmask of \c retro_camera_buffer values.
    * Set by the core.
    *
    * Here's a usage example:
    * @code
    * // Requesting support for camera data delivered as both an OpenGL texture and a pixel buffer:
    * struct retro_camera_callback callback;
    * callback.caps = (1 << RETRO_CAMERA_BUFFER_OPENGL_TEXTURE) | (1 << RETRO_CAMERA_BUFFER_RAW_FRAMEBUFFER);
    * @endcode
    */
    caps:                  u64;

    /**
    * The desired width of the camera frame, in pixels.
    * This is only a hint; the frontend may provide a different size.
    * Set by the core.
    * Use zero to let the frontend decide.
    */
    width:                 u32;

    /**
    * The desired height of the camera frame, in pixels.
    * This is only a hint; the frontend may provide a different size.
    * Set by the core.
    * Use zero to let the frontend decide.
    */
    height:                u32;

    /**
    * @copydoc retro_camera_start_t
    * @see retro_camera_callback
    */
    start:                 camera_start_t;

    /**
    * @copydoc retro_camera_stop_t
    * @see retro_camera_callback
    */
    stop:                  camera_stop_t;

    /**
    * @copydoc retro_camera_frame_raw_framebuffer_t
    * @note If \c NULL, this function will not be called.
    */
    frame_raw_framebuffer: camera_frame_raw_framebuffer_t;

    /**
    * @copydoc retro_camera_frame_opengl_texture_t
    * @note If \c NULL, this function will not be called.
    */
    frame_opengl_texture:  camera_frame_opengl_texture_t;

    /**
    * Core-defined callback invoked by the frontend right after the camera driver is initialized
    * (\em not when calling \c start).
    * May be \c NULL, in which case this function is skipped.
    */
    initialized:           camera_lifetime_status_t;

    /**
    * Core-defined callback invoked by the frontend
    * right before the video camera driver is deinitialized
    * (\em not when calling \c stop).
    * May be \c NULL, in which case this function is skipped.
    */
    deinitialized:         camera_lifetime_status_t;
}

/** @copydoc retro_location_callback::set_interval */
location_set_interval_t :: #type (interval_ms: u32, interval_distance: u32) -> void #c_call;

/** @copydoc retro_location_callback::start */
location_start_t :: #type () -> bool #c_call;

/** @copydoc retro_location_callback::stop */
location_stop_t :: #type () -> void #c_call;

/** @copydoc retro_location_callback::get_position */
location_get_position_t :: #type (lat: *float64, lon: *float64, horiz_accuracy: *float64, vert_accuracy: *float64) -> bool #c_call;

/** Function type that reports the status of the location service. */
location_lifetime_status_t :: #type () -> void #c_call;

/**
* An interface that the core can use to access a device's location.
*
* @note It is the frontend's responsibility to request the necessary permissions
* from the operating system.
* @see RETRO_ENVIRONMENT_GET_LOCATION_INTERFACE
*/
location_callback :: struct {
    /**
    * Starts listening the device's location service.
    *
    * The frontend will report changes to the device's location
    * at the interval defined by \c set_interval.
    * Set by the frontend.
    *
    * @return true if location services were successfully started, false otherwise.
    * Note that this will return \c false if location services are disabled
    * or the frontend doesn't have permission to use them.
    * @note The device's location service may or may not have been enabled
    * before the core calls this function.
    */
    start:         location_start_t;

    /**
    * Stop listening to the device's location service.
    *
    * Set by the frontend.
    *
    * @note The location service itself may or may not
    * be turned off by this function,
    * depending on the platform and the frontend.
    * @post The core will stop receiving location service updates.
    */
    stop:          location_stop_t;

    /**
    * Returns the device's current coordinates.
    *
    * Set by the frontend.
    *
    * @param[out] lat Pointer to latitude, in degrees.
    * Will be set to 0 if no change has occurred since the last call.
    * Behavior is undefined if \c NULL.
    * @param[out] lon Pointer to longitude, in degrees.
    * Will be set to 0 if no change has occurred since the last call.
    * Behavior is undefined if \c NULL.
    * @param[out] horiz_accuracy Pointer to horizontal accuracy.
    * Will be set to 0 if no change has occurred since the last call.
    * Behavior is undefined if \c NULL.
    * @param[out] vert_accuracy Pointer to vertical accuracy.
    * Will be set to 0 if no change has occurred since the last call.
    * Behavior is undefined if \c NULL.
    */
    get_position:  location_get_position_t;

    /**
    * Sets the rate at which the location service should report updates.
    *
    * This is only a hint; the actual rate may differ.
    * Sets the interval of time and/or distance at which to update/poll
    * location-based data.
    *
    * Some platforms may only support one of the two parameters;
    * cores should provide both to ensure compatibility.
    *
    * Set by the frontend.
    *
    * @param interval_ms The desired period of time between location updates, in milliseconds.
    * @param interval_distance The desired distance between location updates, in meters.
    */
    set_interval:  location_set_interval_t;

    /** Called when the location service is initialized. Set by the core. Optional. */
    initialized:   location_lifetime_status_t;

    /** Called when the location service is deinitialized. Set by the core. Optional. */
    deinitialized: location_lifetime_status_t;
}

/**
* The type of rumble motor in a controller.
*
* Both motors can be controlled independently,
* and the strong motor does not override the weak motor.
* @see RETRO_ENVIRONMENT_GET_RUMBLE_INTERFACE
*/
rumble_effect :: enum u32 {
    STRONG :: 0;
    WEAK   :: 1;

    DUMMY  :: 2147483647;

    RETRO_RUMBLE_STRONG :: STRONG;
    RETRO_RUMBLE_WEAK   :: WEAK;

    RETRO_RUMBLE_DUMMY  :: DUMMY;
}

/**
* Requests a rumble state change for a controller.
* Set by the frontend.
*
* @param port The controller port to set the rumble state for.
* @param effect The rumble motor to set the strength of.
* @param strength The desired intensity of the rumble motor, ranging from \c 0 to \c 0xffff (inclusive).
* @return \c true if the requested rumble state was honored.
* If the controller doesn't support rumble, will return \c false.
* @note Calling this before the first \c retro_run() may return \c false.
* @see RETRO_ENVIRONMENT_GET_RUMBLE_INTERFACE
*/
set_rumble_state_t :: #type (port: u32, effect: rumble_effect, strength: u16) -> bool #c_call;

/**
* An interface that the core can use to set the rumble state of a controller.
* @see RETRO_ENVIRONMENT_GET_RUMBLE_INTERFACE
*/
rumble_interface :: struct {
    /** @copydoc retro_set_rumble_state_t */
    set_rumble_state: set_rumble_state_t;
}

/**
* Called by the frontend to request audio samples.
* The core should render audio within this function
* using the callback provided by \c retro_set_audio_sample or \c retro_set_audio_sample_batch.
*
* @warning This function may be called by any thread,
* therefore it must be thread-safe.
* @see RETRO_ENVIRONMENT_SET_AUDIO_CALLBACK
* @see retro_audio_callback
* @see retro_audio_sample_batch_t
* @see retro_audio_sample_t
*/
audio_callback_t :: #type () -> void #c_call;

/**
* Called by the frontend to notify the core that it should pause or resume audio rendering.
* The initial state of the audio driver after registering this callback is \c false (inactive).
*
* @param enabled \c true if the frontend's audio driver is active.
* If so, the registered audio callback will be called regularly.
* If not, the audio callback will not be invoked until the next time
* the frontend calls this function with \c true.
* @warning This function may be called by any thread,
* therefore it must be thread-safe.
* @note Even if no audio samples are rendered,
* the core should continue to update its emulated platform's audio engine if necessary.
* @see RETRO_ENVIRONMENT_SET_AUDIO_CALLBACK
* @see retro_audio_callback
* @see retro_audio_callback_t
*/
audio_set_state_callback_t :: #type (enabled: bool) -> void #c_call;

/**
* An interface that the frontend uses to request audio samples from the core.
* @note To unregister a callback, pass a \c retro_audio_callback_t
* with both fields set to <tt>NULL</tt>.
* @see RETRO_ENVIRONMENT_SET_AUDIO_CALLBACK
*/
audio_callback :: struct {
    /** @see retro_audio_callback_t */
    callback:  audio_callback_t;

    /** @see retro_audio_set_state_callback_t */
    set_state: audio_set_state_callback_t;
}

usec_t :: s64;

/**
* Called right before each iteration of \c retro_run
* if registered via <tt>RETRO_ENVIRONMENT_SET_FRAME_TIME_CALLBACK</tt>.
*
* @param usec Time since the last call to <tt>retro_run</tt>, in microseconds.
* If the frontend is manipulating the frame time
* (e.g. via fast-forward or slow motion),
* this value will be the reference value initially provided to the environment call.
* @see RETRO_ENVIRONMENT_SET_FRAME_TIME_CALLBACK
* @see retro_frame_time_callback
*/
frame_time_callback_t :: #type (usec: usec_t) -> void #c_call;

/**
* @see RETRO_ENVIRONMENT_SET_FRAME_TIME_CALLBACK
*/
frame_time_callback :: struct {
    /**
    * Called to notify the core of the current frame time.
    * If <tt>NULL</tt>, the frontend will clear its registered callback.
    */
    callback:  frame_time_callback_t;

    /**
    * The ideal duration of one frame, in microseconds.
    * Compute it as <tt>1000000 / fps</tt>.
    * The frontend will resolve rounding to ensure that framestepping, etc is exact.
    */
    reference: usec_t;
}

/**
* Notifies a libretro core of how full the frontend's audio buffer is.
* Set by the core, called by the frontend.
* It will be called right before \c retro_run() every frame.
*
* @param active \c true if the frontend's audio buffer is currently in use,
* \c false if audio is disabled in the frontend.
* @param occupancy A value between 0 and 100 (inclusive),
* corresponding to the frontend's audio buffer occupancy percentage.
* @param underrun_likely \c true if the frontend expects an audio buffer underrun
* during the next frame, which indicates that a core should attempt frame-skipping.
*/
audio_buffer_status_callback_t :: #type (active: bool, occupancy: u32, underrun_likely: bool) -> void #c_call;

/**
* A callback to register with the frontend to receive audio buffer occupancy information.
*/
audio_buffer_status_callback :: struct {
    /** @copydoc retro_audio_buffer_status_callback_t */
    callback: audio_buffer_status_callback_t;
}

/* Invalidates the current HW context.
* Any GL state is lost, and must not be deinitialized explicitly.
* If explicit deinitialization is desired by the libretro core,
* it should implement context_destroy callback.
* If called, all GPU resources must be reinitialized.
* Usually called when frontend reinits video driver.
* Also called first time video driver is initialized,
* allowing libretro core to initialize resources.
*/
hw_context_reset_t :: #type () -> void #c_call;

/* Gets current framebuffer which is to be rendered to.
* Could change every frame potentially.
*/
hw_get_current_framebuffer_t :: #type () -> u64 #c_call;

/* Get a symbol from HW context. */
hw_get_proc_address_t :: #type (sym: *u8) -> proc_address_t #c_call;

hw_context_type :: enum u32 {
    NONE             :: 0;

    OPENGL           :: 1;

    OPENGLES2        :: 2;

    OPENGL_CORE      :: 3;

    OPENGLES3        :: 4;

    OPENGLES_VERSION :: 5;

    VULKAN           :: 6;

    D3D11            :: 7;

    D3D10            :: 8;

    D3D12            :: 9;

    D3D9             :: 10;

    DUMMY            :: 2147483647;

    RETRO_HW_CONTEXT_NONE             :: NONE;

    RETRO_HW_CONTEXT_OPENGL           :: OPENGL;

    RETRO_HW_CONTEXT_OPENGLES2        :: OPENGLES2;

    RETRO_HW_CONTEXT_OPENGL_CORE      :: OPENGL_CORE;

    RETRO_HW_CONTEXT_OPENGLES3        :: OPENGLES3;

    RETRO_HW_CONTEXT_OPENGLES_VERSION :: OPENGLES_VERSION;

    RETRO_HW_CONTEXT_VULKAN           :: VULKAN;

    RETRO_HW_CONTEXT_D3D11            :: D3D11;

    RETRO_HW_CONTEXT_D3D10            :: D3D10;

    RETRO_HW_CONTEXT_D3D12            :: D3D12;

    RETRO_HW_CONTEXT_D3D9             :: D3D9;

    RETRO_HW_CONTEXT_DUMMY            :: DUMMY;
}

hw_render_callback :: struct {
    /* Which API to use. Set by libretro core. */
    context_type:            hw_context_type;

    /* Called when a context has been created or when it has been reset.
    * An OpenGL context is only valid after context_reset() has been called.
    *
    * When context_reset is called, OpenGL resources in the libretro
    * implementation are guaranteed to be invalid.
    *
    * It is possible that context_reset is called multiple times during an
    * application lifecycle.
    * If context_reset is called without any notification (context_destroy),
    * the OpenGL context was lost and resources should just be recreated
    * without any attempt to "free" old resources.
    */
    context_reset:           hw_context_reset_t;

    /* Set by frontend.
    * TODO: This is rather obsolete. The frontend should not
    * be providing preallocated framebuffers. */
    get_current_framebuffer: hw_get_current_framebuffer_t;

    /* Set by frontend.
    * Can return all relevant functions, including glClear on Windows. */
    get_proc_address:        hw_get_proc_address_t;

    /* Set if render buffers should have depth component attached.
    * TODO: Obsolete. */
    depth:                   bool;

    /* Set if stencil buffers should be attached.
    * TODO: Obsolete. */
    stencil:                 bool;

    /* Use conventional bottom-left origin convention. If false,
    * standard libretro top-left origin semantics are used.
    * TODO: Move to GL specific interface. */
    bottom_left_origin:      bool;

    /* Major version number for core GL context or GLES 3.1+. */
    version_major:           u32;

    /* Minor version number for core GL context or GLES 3.1+. */
    version_minor:           u32;

    /* If this is true, the frontend will go very far to avoid
    * resetting context in scenarios like toggling fullscreen, etc.
    * TODO: Obsolete? Maybe frontend should just always assume this ...
    */
    cache_context:           bool;

    /* A callback to be called before the context is destroyed in a
    * controlled way by the frontend. */
    context_destroy:         hw_context_reset_t;

    /* Creates a debug context. */
    debug_context:           bool;
}

/* Callback type passed in RETRO_ENVIRONMENT_SET_KEYBOARD_CALLBACK.
* Called by the frontend in response to keyboard events.
* down is set if the key is being pressed, or false if it is being released.
* keycode is the RETROK value of the char.
* character is the text character of the pressed key. (UTF-32).
* key_modifiers is a set of RETROKMOD values or'ed together.
*
* The pressed/keycode state can be independent of the character.
* It is also possible that multiple characters are generated from a
* single keypress.
* Keycode events should be treated separately from character events.
* However, when possible, the frontend should try to synchronize these.
* If only a character is posted, keycode should be RETROK_UNKNOWN.
*
* Similarly if only a keycode event is generated with no corresponding
* character, character should be 0.
*/
keyboard_event_t :: #type (down: bool, keycode: u32, character: u32, key_modifiers: u16) -> void #c_call;

keyboard_callback :: struct {
    callback: keyboard_event_t;
}

/**
* Called by the frontend to open or close the emulated console's virtual disk tray.
*
* The frontend may only set the disk image index
* while the emulated tray is opened.
*
* If the emulated console's disk tray is already in the state given by \c ejected,
* then this function should return \c true without doing anything.
* The core should return \c false if it couldn't change the disk tray's state;
* this may happen if the console itself limits when the disk tray can be open or closed
* (e.g. to wait for the disc to stop spinning).
*
* @param ejected \c true if the virtual disk tray should be "ejected",
* \c false if it should be "closed".
* @return \c true if the virtual disk tray's state has been set to the given state,
* false if there was an error.
* @see retro_get_eject_state_t
*/
set_eject_state_t :: #type (ejected: bool) -> bool #c_call;

/**
* Gets the current ejected state of the disk drive.
* The initial state is closed, i.e. \c false.
*
* @return \c true if the virtual disk tray is "ejected",
* i.e. it's open and a disk can be inserted.
* @see retro_set_eject_state_t
*/
get_eject_state_t :: #type () -> bool #c_call;

/**
* Gets the index of the current disk image,
* as determined by however the frontend orders disk images
* (such as m3u-formatted playlists or special directories).
*
* @return The index of the current disk image
* (starting with 0 for the first disk),
* or a value greater than or equal to \c get_num_images() if no disk is inserted.
* @see retro_get_num_images_t
*/
get_image_index_t :: #type () -> u32 #c_call;

/**
* Inserts the disk image at the given index into the emulated console's drive.
* Can only be called while the disk tray is ejected
* (i.e. \c retro_get_eject_state_t returns \c true).
*
* If the emulated disk tray is ejected
* and already contains the disk image named by \c index,
* then this function should do nothing and return \c true.
*
* @param index The index of the disk image to insert,
* starting from 0 for the first disk.
* A value greater than or equal to \c get_num_images()
* represents the frontend removing the disk without inserting a new one.
* @return \c true if the disk image was successfully set.
* \c false if the disk tray isn't ejected or there was another error
* inserting a new disk image.
*/
set_image_index_t :: #type (index: u32) -> bool #c_call;

/**
* @return The number of disk images which are available to use.
* These are most likely defined in a playlist file.
*/
get_num_images_t :: #type () -> u32 #c_call;

/**
* Replaces the disk image at the given index with a new disk.
*
* Replaces the disk image associated with index.
* Arguments to pass in info have same requirements as retro_load_game().
* Virtual disk tray must be ejected when calling this.
*
* Passing \c NULL to this function indicates
* that the frontend has removed this disk image from its internal list.
* As a result, calls to this function can change the number of available disk indexes.
*
* For example, calling <tt>replace_image_index(1, NULL)</tt>
* will remove the disk image at index 1,
* and the disk image at index 2 (if any)
* will be moved to the newly-available index 1.
*
* @param index The index of the disk image to replace.
* @param info Details about the new disk image,
* or \c NULL if the disk image at the given index should be discarded.
* The semantics of each field are the same as in \c retro_load_game.
* @return \c true if the disk image was successfully replaced
* or removed from the playlist,
* \c false if the tray is not ejected
* or if there was an error.
*/
replace_image_index_t :: #type (index: u32, info: *game_info) -> bool #c_call;

/**
* Adds a new index to the core's internal disk list.
* This will increment the return value from \c get_num_images() by 1.
* This image index cannot be used until a disk image has been set
* with \c replace_image_index.
*
* @return \c true if the core has added space for a new disk image
* and is ready to receive one.
*/
add_image_index_t :: #type () -> bool #c_call;

/**
* Sets the disk image that will be inserted into the emulated disk drive
* before \c retro_load_game is called.
*
* \c retro_load_game does not provide a way to ensure
* that a particular disk image in a playlist is inserted into the console;
* this function makes up for that.
* Frontends should call it immediately before \c retro_load_game,
* and the core should use the arguments
* to validate the disk image in \c retro_load_game.
*
* When content is loaded, the core should verify that the
* disk specified by \c index can be found at \c path.
* This is to guard against auto-selecting the wrong image
* if (for example) the user should modify an existing M3U playlist.
* We have to let the core handle this because
* \c set_initial_image() must be called before loading content,
* i.e. the frontend cannot access image paths in advance
* and thus cannot perform the error check itself.
* If \c index is invalid (i.e. <tt>index >= get_num_images()</tt>)
* or the disk image doesn't match the value given in \c path,
* the core should ignore the arguments
* and insert the disk at index 0 into the virtual disk tray.
*
* @warning If \c RETRO_ENVIRONMENT_SET_DISK_CONTROL_EXT_INTERFACE is called within \c retro_load_game,
* then this function may not be executed.
* Set the disk control interface in \c retro_init if possible.
*
* @param index The index of the disk image within the playlist to set.
* @param path The path of the disk image to set as the first.
* The core should not load this path immediately;
* instead, it should use it within \c retro_load_game
* to verify that the correct disk image was loaded.
* @return \c true if the initial disk index was set,
* \c false if the arguments are invalid
* or the core doesn't support this function.
*/
set_initial_image_t :: #type (index: u32, path: *u8) -> bool #c_call;

/**
* Returns the path of the disk image at the given index
* on the host's file system.
*
* @param index The index of the disk image to get the path of.
* @param s A buffer to store the path in.
* @param len The size of \c s, in bytes.
* @return \c true if the disk image's location was successfully
* queried and copied into \c s,
* \c false if the index is invalid
* or the core couldn't locate the disk image.
*/
get_image_path_t :: #type (index: u32, s: *u8, len: u64) -> bool #c_call;

/**
* Returns a friendly label for the given disk image.
*
* In the simplest case, this may be the disk image's file name
* with the extension omitted.
* For cores or games with more complex content requirements,
* the label can be used to provide information to help the player
* select a disk image to insert;
* for example, a core may label different kinds of disks
* (save data, level disk, installation disk, bonus content, etc.).
* with names that correspond to in-game prompts,
* so that the frontend can provide better guidance to the player.
*
* @param index The index of the disk image to return a label for.
* @param s A buffer to store the resulting label in.
* @param len The length of \c s, in bytes.
* @return \c true if the disk image at \c index is valid
* and a label was copied into \c s.
*/
get_image_label_t :: #type (index: u32, s: *u8, len: u64) -> bool #c_call;

/**
* An interface that the frontend can use to exchange disks
* within the emulated console's disk drive.
*
* All function pointers are required.
*
* @deprecated This struct is superseded by \ref retro_disk_control_ext_callback.
* Only use this one to maintain compatibility
* with older cores and frontends.
*
* @see RETRO_ENVIRONMENT_SET_DISK_CONTROL_EXT_INTERFACE
* @see retro_disk_control_ext_callback
*/
disk_control_callback :: struct {
    /** @copydoc retro_set_eject_state_t */
    set_eject_state:     set_eject_state_t;

    /** @copydoc retro_get_eject_state_t */
    get_eject_state:     get_eject_state_t;

    /** @copydoc retro_get_image_index_t */
    get_image_index:     get_image_index_t;

    /** @copydoc retro_set_image_index_t */
    set_image_index:     set_image_index_t;

    /** @copydoc retro_get_num_images_t */
    get_num_images:      get_num_images_t;

    /** @copydoc retro_replace_image_index_t */
    replace_image_index: replace_image_index_t;

    /** @copydoc retro_add_image_index_t */
    add_image_index:     add_image_index_t;
}

/**
* @copybrief retro_disk_control_callback
*
* All function pointers are required unless otherwise noted.
*
* @see RETRO_ENVIRONMENT_SET_DISK_CONTROL_EXT_INTERFACE
*/
disk_control_ext_callback :: struct {
    /** @copydoc retro_set_eject_state_t */
    set_eject_state:     set_eject_state_t;

    /** @copydoc retro_get_eject_state_t */
    get_eject_state:     get_eject_state_t;

    /** @copydoc retro_get_image_index_t */
    get_image_index:     get_image_index_t;

    /** @copydoc retro_set_image_index_t */
    set_image_index:     set_image_index_t;

    /** @copydoc retro_get_num_images_t */
    get_num_images:      get_num_images_t;

    /** @copydoc retro_replace_image_index_t */
    replace_image_index: replace_image_index_t;

    /** @copydoc retro_add_image_index_t */
    add_image_index:     add_image_index_t;

    /** @copydoc retro_set_initial_image_t
    *
    * Optional; not called if \c NULL.
    *
    * @note The frontend will only try to record/restore the last-used disk index
    * if both \c set_initial_image and \c get_image_path are implemented.
    */
    set_initial_image:   set_initial_image_t;

    /**
    * @copydoc retro_get_image_path_t
    *
    * Optional; not called if \c NULL.
    */
    get_image_path:      get_image_path_t;

    /**
    * @copydoc retro_get_image_label_t
    *
    * Optional; not called if \c NULL.
    */
    get_image_label:     get_image_label_t;
}

/* Used by the core to send a packet to one or all connected players.
* A single packet sent via this interface can contain up to 64 KB of data.
*
* The client_id RETRO_NETPACKET_BROADCAST sends the packet as a broadcast to
* all connected players. This is supported from the host as well as clients.
*  Otherwise, the argument indicates the player to send the packet to.
*
* A frontend must support sending reliable packets (RETRO_NETPACKET_RELIABLE).
* Unreliable packets might not be supported by the frontend, but the flags can
* still be specified. Reliable transmission will be used instead.
*
* Calling this with the flag RETRO_NETPACKET_FLUSH_HINT will send off the
* packet and any previously buffered ones immediately and without blocking.
* To only flush previously queued packets, buf or len can be passed as NULL/0.
*
* This function is not guaranteed to be thread-safe and must be called during
* retro_run or any of the netpacket callbacks passed with this interface.
*/
netpacket_send_t :: #type (flags: s32, buf: *void, len: u64, client_id: u16) -> void #c_call;

/* Optionally read any incoming packets without waiting for the end of the
* frame. While polling, retro_netpacket_receive_t and retro_netpacket_stop_t
* can be called. The core can perform this in a loop to do a blocking read,
* i.e., wait for incoming data, but needs to handle stop getting called and
* also give up after a short while to avoid freezing on a connection problem.
* It is a good idea to manually flush outgoing packets before calling this.
*
* This function is not guaranteed to be thread-safe and must be called during
* retro_run or any of the netpacket callbacks passed with this interface.
*/
netpacket_poll_receive_t :: #type () -> void #c_call;

/* Called by the frontend to signify that a multiplayer session has started.
* If client_id is 0 the local player is the host of the session and at this
* point no other player has connected yet.
*
* If client_id is > 0 the local player is a client connected to a host and
* at this point is already fully connected to the host.
*
* The core must store the function pointer send_fn and use it whenever it
* wants to send a packet. Optionally poll_receive_fn can be stored and used
* when regular receiving between frames is not enough. These function pointers
* remain valid until the frontend calls retro_netpacket_stop_t.
*/
netpacket_start_t :: #type (client_id: u16, send_fn: netpacket_send_t, poll_receive_fn: netpacket_poll_receive_t) -> void #c_call;

/* Called by the frontend when a new packet arrives which has been sent from
* another player with retro_netpacket_send_t. The client_id argument indicates
* who has sent the packet.
*/
netpacket_receive_t :: #type (buf: *void, len: u64, client_id: u16) -> void #c_call;

/* Called by the frontend when the multiplayer session has ended.
* Once this gets called the function pointers passed to
* retro_netpacket_start_t will not be valid anymore.
*/
netpacket_stop_t :: #type () -> void #c_call;

/* Called by the frontend every frame (between calls to retro_run while
* updating the state of the multiplayer session.
* This is a good place for the core to call retro_netpacket_send_t from.
*/
netpacket_poll_t :: #type () -> void #c_call;

/* Called by the frontend when a new player connects to the hosted session.
* This is only called on the host side, not for clients connected to the host.
* If this function returns false, the newly connected player gets dropped.
* This can be used for example to limit the number of players.
*/
netpacket_connected_t :: #type (client_id: u16) -> bool #c_call;

/* Called by the frontend when a player leaves or disconnects from the hosted session.
* This is only called on the host side, not for clients connected to the host.
*/
netpacket_disconnected_t :: #type (client_id: u16) -> void #c_call;

/**
* A callback interface for giving a core the ability to send and receive custom
* network packets during a multiplayer session between two or more instances
* of a libretro frontend.
*
* Normally during connection handshake the frontend will compare library_version
* used by both parties and show a warning if there is a difference. When the core
* supplies protocol_version, the frontend will check against this instead.
*
* @see RETRO_ENVIRONMENT_SET_NETPACKET_INTERFACE
*/
netpacket_callback :: struct {
    start:            netpacket_start_t;
    receive:          netpacket_receive_t;
    stop:             netpacket_stop_t; /* Optional - may be NULL */
    poll:             netpacket_poll_t; /* Optional - may be NULL */
    connected:        netpacket_connected_t; /* Optional - may be NULL */
    disconnected:     netpacket_disconnected_t; /* Optional - may be NULL */
    protocol_version: *u8; /* Optional - if not NULL will be used instead of core version to decide if communication is compatible */
}

/**
* The pixel format used for rendering.
* @see RETRO_ENVIRONMENT_SET_PIXEL_FORMAT
*/
pixel_format :: enum u32 {
    _0RGB1555 :: 0;

    XRGB8888  :: 1;

    RGB565    :: 2;

    UNKNOWN   :: 2147483647;

    RETRO_PIXEL_FORMAT_0RGB1555 :: _0RGB1555;

    RETRO_PIXEL_FORMAT_XRGB8888 :: XRGB8888;

    RETRO_PIXEL_FORMAT_RGB565   :: RGB565;

    RETRO_PIXEL_FORMAT_UNKNOWN  :: UNKNOWN;
}

/**
* Details about how the frontend will use savestates.
*
* @see RETRO_ENVIRONMENT_GET_SAVESTATE_CONTEXT
* @see retro_serialize
*/
savestate_context :: enum u32 {
    NORMAL                 :: 0;

    RUNAHEAD_SAME_INSTANCE :: 1;

    RUNAHEAD_SAME_BINARY   :: 2;

    ROLLBACK_NETPLAY       :: 3;

    UNKNOWN                :: 2147483647;

    RETRO_SAVESTATE_CONTEXT_NORMAL                 :: NORMAL;

    RETRO_SAVESTATE_CONTEXT_RUNAHEAD_SAME_INSTANCE :: RUNAHEAD_SAME_INSTANCE;

    RETRO_SAVESTATE_CONTEXT_RUNAHEAD_SAME_BINARY   :: RUNAHEAD_SAME_BINARY;

    RETRO_SAVESTATE_CONTEXT_ROLLBACK_NETPLAY       :: ROLLBACK_NETPLAY;

    RETRO_SAVESTATE_CONTEXT_UNKNOWN                :: UNKNOWN;
}

/**
* Defines a message that the frontend will display to the user,
* as determined by <tt>RETRO_ENVIRONMENT_SET_MESSAGE</tt>.
*
* @deprecated This struct is superseded by \ref retro_message_ext,
* which provides more control over how a message is presented.
* Only use it for compatibility with older cores and frontends.
*
* @see RETRO_ENVIRONMENT_SET_MESSAGE
* @see retro_message_ext
*/
message :: struct {
    /**
    * Null-terminated message to be displayed.
    * If \c NULL or empty, the message will be ignored.
    */
    msg:    *u8;

    /** Duration to display \c msg in frames. */
    frames: u32;
}

/**
* The method that the frontend will use to display a message to the player.
* @see retro_message_ext
*/
message_target :: enum u32 {
    ALL :: 0;

    OSD :: 1;

    LOG :: 2;

    RETRO_MESSAGE_TARGET_ALL :: ALL;

    RETRO_MESSAGE_TARGET_OSD :: OSD;

    RETRO_MESSAGE_TARGET_LOG :: LOG;
}

/**
* A broad category for the type of message that the frontend will display.
*
* Each message type has its own use case,
* therefore the frontend should present each one differently.
*
* @note This is a hint that the frontend may ignore.
* The frontend should fall back to \c RETRO_MESSAGE_TYPE_NOTIFICATION
* for message types that it doesn't support.
*/
message_type :: enum u32 {
    NOTIFICATION     :: 0;

    NOTIFICATION_ALT :: 1;

    STATUS           :: 2;

    PROGRESS         :: 3;

    RETRO_MESSAGE_TYPE_NOTIFICATION     :: NOTIFICATION;

    RETRO_MESSAGE_TYPE_NOTIFICATION_ALT :: NOTIFICATION_ALT;

    RETRO_MESSAGE_TYPE_STATUS           :: STATUS;

    RETRO_MESSAGE_TYPE_PROGRESS         :: PROGRESS;
}

/**
* A core-provided message that the frontend will display to the player.
*
* @note The frontend is encouraged store these messages in a queue.
* However, it should not empty the queue of core-submitted messages upon exit;
* if a core exits with an error, it may want to use this API
* to show an error message to the player.
*
* The frontend should maintain its own copy of the submitted message
* and all subobjects, including strings.
*
* @see RETRO_ENVIRONMENT_SET_MESSAGE_EXT
*/
message_ext :: struct {
    /**
    * The \c NULL-terminated text of a message to show to the player.
    * Must not be \c NULL.
    *
    * @note The frontend must honor newlines in this string
    * when rendering text to \c RETRO_MESSAGE_TARGET_OSD.
    */
    msg:      *u8;

    /**
    * The duration that \c msg will be displayed on-screen, in milliseconds.
    *
    * Ignored for \c RETRO_MESSAGE_TARGET_LOG.
    */
    duration: u32;

    /**
    * The relative importance of this message
    * when targeting \c RETRO_MESSAGE_TARGET_OSD.
    * Higher values indicate higher priority.
    *
    * The frontend should use this to prioritize messages
    * when it can't show all active messages at once,
    * or to remove messages from its queue if it's full.
    *
    * The relative display order of messages with the same priority
    * is left to the frontend's discretion,
    * although we suggest breaking ties
    * in favor of the most recently-submitted message.
    *
    * Frontends may handle deprioritized messages at their discretion;
    * such messages may have their \c duration altered,
    * be hidden without being delayed,
    * or even be discarded entirely.
    *
    * @note In the reference frontend (RetroArch),
    * the same priority values are used for frontend-generated notifications,
    * which are typically between 0 and 3 depending upon importance.
    *
    * Ignored for \c RETRO_MESSAGE_TARGET_LOG.
    */
    priority: u32;

    /**
    * The severity level of this message.
    *
    * The frontend may use this to filter or customize messages
    * depending on the player's preferences.
    * Here are some ideas:
    *
    * @li Use this to prioritize errors and warnings
    *     over higher-ranking info and debug messages.
    * @li Render warnings or errors with extra visual feedback,
    *     e.g. with brighter colors or accompanying sound effects.
    *
    * @see RETRO_ENVIRONMENT_SET_LOG_INTERFACE
    */
    level:    log_level;

    /**
    * The intended destination of this message.
    *
    * @see retro_message_target
    */
    target:   message_target;

    /**
    * The intended semantics of this message.
    *
    * Ignored for \c RETRO_MESSAGE_TARGET_LOG.
    *
    * @see retro_message_type
    */
    type:     message_type;

    /**
    * The progress of an asynchronous task.
    *
    * A value between 0 and 100 (inclusive) indicates the task's percentage,
    * and a value of -1 indicates a task of unknown completion.
    *
    * @note Since message type is a hint, a frontend may ignore progress values.
    * Where relevant, a core should include progress percentage within the message string,
    * such that the message intent remains clear when displayed
    * as a standard frontend-generated notification.
    *
    * Ignored for \c RETRO_MESSAGE_TARGET_LOG and for
    * message types other than \c RETRO_MESSAGE_TYPE_PROGRESS.
    */
    progress: s8;
}

/* Describes how the libretro implementation maps a libretro input bind
* to its internal input system through a human readable string.
* This string can be used to better let a user configure input. */
input_descriptor :: struct {
    /* Associates given parameters with a description. */
    port:        u32;
    device:      u32;
    index:       u32;
    id:          u32;

    /* Human readable description for parameters.
    * The pointer must remain valid until
    * retro_unload_game() is called. */
    description: *u8;
}

/**
* Contains basic information about the core.
*
* @see retro_get_system_info
* @warning All pointers are owned by the core
* and must remain valid throughout its lifetime.
*/
system_info :: struct {
    /**
    * Descriptive name of the library.
    *
    * @note Should not contain any version numbers, etc.
    */
    library_name:     *u8;

    /**
    * Descriptive version of the core.
    */
    library_version:  *u8;

    /**
    * A pipe-delimited string list of file extensions that this core can load, e.g. "bin|rom|iso".
    * Typically used by a frontend for filtering or core selection.
    */
    valid_extensions: *u8;

    /* Libretro cores that need to have direct access to their content
    * files, including cores which use the path of the content files to
    * determine the paths of other files, should set need_fullpath to true.
    *
    * Cores should strive for setting need_fullpath to false,
    * as it allows the frontend to perform patching, etc.
    *
    * If need_fullpath is true and retro_load_game() is called:
    *    - retro_game_info::path is guaranteed to have a valid path
    *    - retro_game_info::data and retro_game_info::size are invalid
    *
    * If need_fullpath is false and retro_load_game() is called:
    *    - retro_game_info::path may be NULL
    *    - retro_game_info::data and retro_game_info::size are guaranteed
    *      to be valid
    *
    * See also:
    *    - RETRO_ENVIRONMENT_GET_SYSTEM_DIRECTORY
    *    - RETRO_ENVIRONMENT_GET_SAVE_DIRECTORY
    */
    need_fullpath:    bool;

    /* If true, the frontend is not allowed to extract any archives before
    * loading the real content.
    * Necessary for certain libretro implementations that load games
    * from zipped archives. */
    block_extract:    bool;
}

/* Defines overrides which modify frontend handling of
* specific content file types.
* An array of retro_system_content_info_override is
* passed to RETRO_ENVIRONMENT_SET_CONTENT_INFO_OVERRIDE
* NOTE: In the following descriptions, references to
*       retro_load_game() may be replaced with
*       retro_load_game_special() */
system_content_info_override :: struct {
    /* A list of file extensions for which the override
    * should apply, delimited by a 'pipe' character
    * (e.g. "md|sms|gg")
    * Permitted file extensions are limited to those
    * included in retro_system_info::valid_extensions
    * and/or retro_subsystem_rom_info::valid_extensions */
    extensions:      *u8;

    /* Overrides the need_fullpath value set in
    * retro_system_info and/or retro_subsystem_rom_info.
    * To reiterate:
    *
    * If need_fullpath is true and retro_load_game() is called:
    *    - retro_game_info::path is guaranteed to contain a valid
    *      path to an existent file
    *    - retro_game_info::data and retro_game_info::size are invalid
    *
    * If need_fullpath is false and retro_load_game() is called:
    *    - retro_game_info::path may be NULL
    *    - retro_game_info::data and retro_game_info::size are guaranteed
    *      to be valid
    *
    * In addition:
    *
    * If need_fullpath is true and retro_load_game() is called:
    *    - retro_game_info_ext::full_path is guaranteed to contain a valid
    *      path to an existent file
    *    - retro_game_info_ext::archive_path may be NULL
    *    - retro_game_info_ext::archive_file may be NULL
    *    - retro_game_info_ext::dir is guaranteed to contain a valid path
    *      to the directory in which the content file exists
    *    - retro_game_info_ext::name is guaranteed to contain the
    *      basename of the content file, without extension
    *    - retro_game_info_ext::ext is guaranteed to contain the
    *      extension of the content file in lower case format
    *    - retro_game_info_ext::data and retro_game_info_ext::size
    *      are invalid
    *
    * If need_fullpath is false and retro_load_game() is called:
    *    - If retro_game_info_ext::file_in_archive is false:
    *       - retro_game_info_ext::full_path is guaranteed to contain
    *         a valid path to an existent file
    *       - retro_game_info_ext::archive_path may be NULL
    *       - retro_game_info_ext::archive_file may be NULL
    *       - retro_game_info_ext::dir is guaranteed to contain a
    *         valid path to the directory in which the content file exists
    *       - retro_game_info_ext::name is guaranteed to contain the
    *         basename of the content file, without extension
    *       - retro_game_info_ext::ext is guaranteed to contain the
    *         extension of the content file in lower case format
    *    - If retro_game_info_ext::file_in_archive is true:
    *       - retro_game_info_ext::full_path may be NULL
    *       - retro_game_info_ext::archive_path is guaranteed to
    *         contain a valid path to an existent compressed file
    *         inside which the content file is located
    *       - retro_game_info_ext::archive_file is guaranteed to
    *         contain a valid path to an existent content file
    *         inside the compressed file referred to by
    *         retro_game_info_ext::archive_path
    *            e.g. for a compressed file '/path/to/foo.zip'
    *            containing 'bar.sfc'
    *             > retro_game_info_ext::archive_path will be '/path/to/foo.zip'
    *             > retro_game_info_ext::archive_file will be 'bar.sfc'
    *       - retro_game_info_ext::dir is guaranteed to contain a
    *         valid path to the directory in which the compressed file
    *         (containing the content file) exists
    *       - retro_game_info_ext::name is guaranteed to contain
    *         EITHER
    *         1) the basename of the compressed file (containing
    *            the content file), without extension
    *         OR
    *         2) the basename of the content file inside the
    *            compressed file, without extension
    *         In either case, a core should consider 'name' to
    *         be the canonical name/ID of the the content file
    *       - retro_game_info_ext::ext is guaranteed to contain the
    *         extension of the content file inside the compressed file,
    *         in lower case format
    *    - retro_game_info_ext::data and retro_game_info_ext::size are
    *      guaranteed to be valid */
    need_fullpath:   bool;

    /* If need_fullpath is false, specifies whether the content
    * data buffer available in retro_load_game() is 'persistent'
    *
    * If persistent_data is false and retro_load_game() is called:
    *    - retro_game_info::data and retro_game_info::size
    *      are valid only until retro_load_game() returns
    *    - retro_game_info_ext::data and retro_game_info_ext::size
    *      are valid only until retro_load_game() returns
    *
    * If persistent_data is true and retro_load_game() is called:
    *    - retro_game_info::data and retro_game_info::size
    *      are valid until retro_deinit() returns
    *    - retro_game_info_ext::data and retro_game_info_ext::size
    *      are valid until retro_deinit() returns */
    persistent_data: bool;
}

/* Similar to retro_game_info, but provides extended
* information about the source content file and
* game memory buffer status.
* And array of retro_game_info_ext is returned by
* RETRO_ENVIRONMENT_GET_GAME_INFO_EXT
* NOTE: In the following descriptions, references to
*       retro_load_game() may be replaced with
*       retro_load_game_special() */
game_info_ext :: struct {
    /* - If file_in_archive is false, contains a valid
    *   path to an existent content file (UTF-8 encoded)
    * - If file_in_archive is true, may be NULL */
    full_path:       *u8;

    /* - If file_in_archive is false, may be NULL
    * - If file_in_archive is true, contains a valid path
    *   to an existent compressed file inside which the
    *   content file is located (UTF-8 encoded) */
    archive_path:    *u8;

    /* - If file_in_archive is false, may be NULL
    * - If file_in_archive is true, contain a valid path
    *   to an existent content file inside the compressed
    *   file referred to by archive_path (UTF-8 encoded)
    *      e.g. for a compressed file '/path/to/foo.zip'
    *      containing 'bar.sfc'
    *      > archive_path will be '/path/to/foo.zip'
    *      > archive_file will be 'bar.sfc' */
    archive_file:    *u8;

    /* - If file_in_archive is false, contains a valid path
    *   to the directory in which the content file exists
    *   (UTF-8 encoded)
    * - If file_in_archive is true, contains a valid path
    *   to the directory in which the compressed file
    *   (containing the content file) exists (UTF-8 encoded) */
    dir:             *u8;

    /* Contains the canonical name/ID of the content file
    * (UTF-8 encoded). Intended for use when identifying
    * 'complementary' content named after the loaded file -
    * i.e. companion data of a different format (a CD image
    * required by a ROM), texture packs, internally handled
    * save files, etc.
    * - If file_in_archive is false, contains the basename
    *   of the content file, without extension
    * - If file_in_archive is true, then string is
    *   implementation specific. A frontend may choose to
    *   set a name value of:
    *   EITHER
    *   1) the basename of the compressed file (containing
    *      the content file), without extension
    *   OR
    *   2) the basename of the content file inside the
    *      compressed file, without extension
    *   RetroArch sets the 'name' value according to (1).
    *   A frontend that supports routine loading of
    *   content from archives containing multiple unrelated
    *   content files may set the 'name' value according
    *   to (2). */
    name:            *u8;

    /* - If file_in_archive is false, contains the extension
    *   of the content file in lower case format
    * - If file_in_archive is true, contains the extension
    *   of the content file inside the compressed file,
    *   in lower case format */
    ext:             *u8;

    /* String of implementation specific meta-data. */
    meta:            *u8;

    /* Memory buffer of loaded game content. Will be NULL:
    * IF
    * - retro_system_info::need_fullpath is true and
    *   retro_system_content_info_override::need_fullpath
    *   is unset
    * OR
    * - retro_system_content_info_override::need_fullpath
    *   is true */
    data:            *void;

    /* Size of game content memory buffer, in bytes */
    size:            u64;

    /* True if loaded content file is inside a compressed
    * archive */
    file_in_archive: bool;

    /* - If data is NULL, value is unset/ignored
    * - If data is non-NULL:
    *   - If persistent_data is false, data and size are
    *     valid only until retro_load_game() returns
    *   - If persistent_data is true, data and size are
    *     are valid until retro_deinit() returns */
    persistent_data: bool;
}

/**
* Parameters describing the size and shape of the video frame.
* @see retro_system_av_info
* @see RETRO_ENVIRONMENT_SET_SYSTEM_AV_INFO
* @see RETRO_ENVIRONMENT_SET_GEOMETRY
* @see retro_get_system_av_info
*/
game_geometry :: struct {
    /**
    * Nominal video width of game, in pixels.
    * This will typically be the emulated platform's native video width
    * (or its smallest, if the original hardware supports multiple resolutions).
    */
    base_width:   u32;

    /**
    * Nominal video height of game, in pixels.
    * This will typically be the emulated platform's native video height
    * (or its smallest, if the original hardware supports multiple resolutions).
    */
    base_height:  u32;

    /**
    * Maximum possible width of the game screen, in pixels.
    * This will typically be the emulated platform's maximum video width.
    * For cores that emulate platforms with multiple screens (such as the Nintendo DS),
    * this should assume the core's widest possible screen layout (e.g. side-by-side).
    * For cores that support upscaling the resolution,
    * this should assume the highest supported scale factor is active.
    */
    max_width:    u32;

    max_height:   u32; /* Maximum possible height of game. */

    /**
    * Nominal aspect ratio of game.
    * If zero or less,
    * an aspect ratio of <tt>base_width / base_height</tt> is assumed.
    *
    * @note A frontend may ignore this setting.
    */
    aspect_ratio: float;
}

/**
* Parameters describing the timing of the video and audio.
* @see retro_system_av_info
* @see RETRO_ENVIRONMENT_SET_SYSTEM_AV_INFO
* @see retro_get_system_av_info
*/
system_timing :: struct {
    /** Video output refresh rate, in frames per second. */
    fps:         float64;

    /** The audio output sample rate, in Hz. */
    sample_rate: float64;
}

/**
* Configures how the core's audio and video should be updated.
* @see RETRO_ENVIRONMENT_SET_SYSTEM_AV_INFO
* @see retro_get_system_av_info
*/
system_av_info :: struct {
    /** Parameters describing the size and shape of the video frame. */
    geometry: game_geometry;

    /** Parameters describing the timing of the video and audio. */
    timing:   system_timing;
}

/**
* Represents \ref RETRO_ENVIRONMENT_GET_VARIABLE "a core option query".
*
* @note In \ref RETRO_ENVIRONMENT_SET_VARIABLES
* (which is a deprecated API),
* this \c struct serves as an option definition.
*
* @see RETRO_ENVIRONMENT_GET_VARIABLE
*/
variable :: struct {
    /**
    * A unique key identifying this option.
    *
    * Should be a key for an option that was previously defined
    * with \ref RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2 or similar.
    *
    * Should be prefixed with the core's name
    * to minimize the risk of collisions with another core's options,
    * as frontends are not required to use a namespacing scheme for storing options.
    * For example, a core named "foo" might define an option named "foo_option".
    *
    * @note In \ref RETRO_ENVIRONMENT_SET_VARIABLES
    * (which is a deprecated API),
    * this field is used to define an option
    * named by this key.
    */
    key:   *u8;

    /**
    * Value to be obtained.
    *
    * Set by the frontend to \c NULL if
    * the option named by \ref key does not exist.
    *
    * @note In \ref RETRO_ENVIRONMENT_SET_VARIABLES
    * (which is a deprecated API),
    * this field is set by the core to define the possible values
    * for an option named by \ref key.
    * When used this way, it must be formatted as follows:
    * @li The text before the first ';' is the option's human-readable title.
    * @li A single space follows the ';'.
    * @li The rest of the string is a '|'-delimited list of possible values,
    * with the first one being the default.
    */
    value: *u8;
}

/**
* An argument that's used to show or hide a core option in the frontend.
*
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_DISPLAY
*/
core_option_display :: struct {
    /**
    * The key for a core option that was defined with \ref RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2,
    * \ref RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2_INTL,
    * or their legacy equivalents.
    */
    key:     *u8;

    /**
    * Whether the option named by \c key
    * should be displayed to the player in the frontend's core options menu.
    *
    * @note This value is a hint, \em not a requirement;
    * the frontend is free to ignore this field.
    */
    visible: bool;
}

/**
* A descriptor for a particular choice within a core option.
*
* @note All option values are represented as strings.
* If you need to represent any other type,
* parse the string in \ref value.
*
* @see retro_core_option_v2_category
*/
core_option_value :: struct {
    /**
    * The option value that the frontend will serialize.
    *
    * Must not be \c NULL or empty.
    * No other hard limits are placed on this value's contents,
    * but here are some suggestions:
    *
    * \li If the value represents a number,
    *     don't include any non-digit characters (units, separators, etc.).
    *     Instead, include that information in \c label.
    *     This will simplify parsing.
    * \li If the value represents a file path,
    *     store it as a relative path with respect to one of the common libretro directories
    *     (e.g. \ref RETRO_ENVIRONMENT_GET_SYSTEM_DIRECTORY "the system directory"
    *     or \ref RETRO_ENVIRONMENT_GET_SAVE_DIRECTORY "the save directory"),
    *     and use forward slashes (\c "/") as directory separators.
    *     This will simplify cloud storage if supported by the frontend,
    *     as the same file may be used on multiple devices.
    */
    value: *u8;

    /**
    * Human-readable name for \c value that the frontend should show to players.
    *
    * May be \c NULL, in which case the frontend
    * should display \c value itself.
    *
    * Here are some guidelines for writing a good label:
    *
    * \li Make the option labels obvious
    *     so that they don't need to be explained in the description.
    * \li Keep labels short, and don't use unnecessary words.
    *     For example, "OpenGL" is a better label than "OpenGL Mode".
    * \li If the option represents a number,
    *     consider adding units, separators, or other punctuation
    *     into the label itself.
    *     For example, "5 seconds" is a better label than "5".
    * \li If the option represents a number, use intuitive units
    *     that don't take a lot of digits to express.
    *     For example, prefer "1 minute" over "60 seconds" or "60,000 milliseconds".
    */
    label: *u8;
}

/**
* @copybrief retro_core_option_v2_definition
*
* @deprecated Use \ref retro_core_option_v2_definition instead,
* as it supports categorizing options into groups.
* Only use this \c struct to support older frontends or cores.
*
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_INTL
*/
core_option_definition :: struct {
    /** @copydoc retro_core_option_v2_definition::key */
    key:           *u8;

    /** @copydoc retro_core_option_v2_definition::desc */
    desc:          *u8;

    /** @copydoc retro_core_option_v2_definition::info */
    info:          *u8;

    /** @copydoc retro_core_option_v2_definition::values */
    values:        [128] core_option_value;

    /** @copydoc retro_core_option_v2_definition::default_value */
    default_value: *u8;
}

/**
* A variant of \ref retro_core_options that supports internationalization.
*
* @deprecated Use \ref retro_core_options_v2_intl instead,
* as it supports categorizing options into groups.
* Only use this \c struct to support older frontends or cores.
*
* @see retro_core_options
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_INTL
* @see RETRO_ENVIRONMENT_GET_LANGUAGE
* @see retro_language
*/
core_options_intl :: struct {
    /** @copydoc retro_core_options_v2_intl::us */
    us:    *core_option_definition;

    /** @copydoc retro_core_options_v2_intl::local */
    local: *core_option_definition;
}

/**
* A descriptor for a group of related core options.
*
* Here's an example category:
*
* @code
* {
*     "cpu",
*     "CPU Emulation",
*     "Settings for CPU quirks."
* }
* @endcode
*
* @see retro_core_options_v2
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2_INTL
*/
core_option_v2_category :: struct {
    /**
    * A string that uniquely identifies this category within the core's options.
    * Any \c retro_core_option_v2_definition whose \c category_key matches this
    * is considered to be within this category.
    * Different cores may use the same category keys,
    * so namespacing them is not necessary.
    * Valid characters are <tt>[a-zA-Z0-9_-]</tt>.
    *
    * Frontends should use this category to organize core options,
    * but may customize this category's presentation in other ways.
    * For example, a frontend may use common keys like "audio" or "gfx"
    * to select an appropriate icon in its UI.
    *
    * Required; must not be \c NULL.
    */
    key:  *u8;

    /**
    * A brief human-readable name for this category,
    * intended for the frontend to display to the player.
    * This should be a name that's concise and descriptive, such as "Audio" or "Video".
    *
    * Required; must not be \c NULL.
    */
    desc: *u8;

    /**
    * A human-readable description for this category,
    * intended for the frontend to display to the player
    * as secondary help text (e.g. a sublabel or a tooltip).
    * Optional; may be \c NULL or an empty string.
    */
    info: *u8;
}

/**
* A descriptor for a particular core option and the values it may take.
*
* Supports categorizing options into groups,
* so as not to overwhelm the player.
*
* @see retro_core_option_v2_category
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2_INTL
*/
core_option_v2_definition :: struct {
    /**
    * A unique identifier for this option that cores may use
    * \ref RETRO_ENVIRONMENT_GET_VARIABLE "to query its value from the frontend".
    * Must be unique within this core.
    *
    * Should be unique globally;
    * the recommended method for doing so
    * is to prefix each option with the core's name.
    * For example, an option that controls the resolution for a core named "foo"
    * should be named \c "foo_resolution".
    *
    * Valid key characters are in the set <tt>[a-zA-Z0-9_-]</tt>.
    */
    key:              *u8;

    /**
    * A human-readable name for this option,
    * intended to be displayed by frontends that don't support
    * categorizing core options.
    *
    * Required; must not be \c NULL or empty.
    */
    desc:             *u8;

    /**
    * A human-readable name for this option,
    * intended to be displayed by frontends that support
    * categorizing core options.
    *
    * This version may be slightly more concise than \ref desc,
    * as it can rely on the structure of the options menu.
    * For example, "Interface" is a good \c desc_categorized,
    * as it can be displayed as a sublabel for a "Network" category.
    * For \c desc, "Network Interface" would be more suitable.
    *
    * Optional; if this field or \c category_key is empty or \c NULL,
    * \c desc will be used instead.
    */
    desc_categorized: *u8;

    /**
    * A human-readable description of this option and its effects,
    * intended to be displayed by frontends that don't support
    * categorizing core options.
    *
    * @details Intended to be displayed as secondary help text,
    * such as a tooltip or a sublabel.
    *
    * Here are some suggestions for writing a good description:
    *
    * \li Avoid technical jargon unless this option is meant for advanced users.
    *     If unavoidable, suggest one of the default options for those unsure.
    * \li Don't repeat the option name in the description;
    *     instead, describe what the option name means.
    * \li If an option requires a core restart or game reset to take effect,
    *     be sure to say so.
    * \li Try to make the option labels obvious
    *     so that they don't need to be explained in the description.
    *
    * Optional; may be \c NULL.
    */
    info:             *u8;

    /**
    * @brief A human-readable description of this option and its effects,
    * intended to be displayed by frontends that support
    * categorizing core options.
    *
    * This version is provided to accommodate descriptions
    * that reference other options by name,
    * as options may have different user-facing names
    * depending on whether the frontend supports categorization.
    *
    * @copydetails info
    *
    * If empty or \c NULL, \c info will be used instead.
    * Will be ignored if \c category_key is empty or \c NULL.
    */
    info_categorized: *u8;

    /**
    * The key of the category that this option belongs to.
    *
    * Optional; if equal to \ref retro_core_option_v2_category::key "a defined category",
    * then this option shall be displayed by the frontend
    * next to other options in this same category,
    * assuming it supports doing so.
    * Option categories are intended to be displayed in a submenu,
    * but this isn't a hard requirement.
    *
    * If \c NULL, empty, or not equal to a defined category,
    * then this option is considered uncategorized
    * and the frontend shall display it outside of any category
    * (most likely at a top-level menu).
    *
    * @see retro_core_option_v2_category
    */
    category_key:     *u8;

    /**
    * One or more possible values for this option,
    * up to the limit of \ref RETRO_NUM_CORE_OPTION_VALUES_MAX.
    *
    * Terminated by a \c { NULL, NULL } element,
    * although frontends should work even if all elements are used.
    */
    values:           [128] core_option_value;

    /**
    * The default value for this core option.
    * Used if it hasn't been set, e.g. for new cores.
    * Must equal one of the \ref value members in the \c values array,
    * or else this option will be ignored.
    */
    default_value:    *u8;
}

/**
* A set of core option descriptors and the categories that group them,
* suitable for enabling a core to be customized.
*
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2
*/
core_options_v2 :: struct {
    /**
    * An array of \ref retro_core_option_v2_category "option categories",
    * terminated by a zeroed-out category \c struct.
    *
    * Will be ignored if the frontend doesn't support core option categories.
    *
    * If \c NULL or ignored, all options will be treated as uncategorized.
    * This most likely means that a frontend will display them at a top-level menu
    * without any kind of hierarchy or grouping.
    */
    categories:  *core_option_v2_category;

    /**
    * An array of \ref retro_core_option_v2_definition "core option descriptors",
    * terminated by a zeroed-out definition \c struct.
    *
    * Required; must not be \c NULL.
    */
    definitions: *core_option_v2_definition;
}

/**
* A variant of \ref retro_core_options_v2 that supports internationalization.
*
* @see retro_core_options_v2
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2_INTL
* @see RETRO_ENVIRONMENT_GET_LANGUAGE
* @see retro_language
*/
core_options_v2_intl :: struct {
    /**
    * Pointer to a core options set
    * whose text is written in American English.
    *
    * This may be passed to \c RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2 as-is
    * if not using \c RETRO_ENVIRONMENT_SET_CORE_OPTIONS_V2_INTL.
    *
    * Required; must not be \c NULL.
    */
    us:    *core_options_v2;

    /**
    * Pointer to a core options set
    * whose text is written in one of libretro's \ref retro_language "supported languages",
    * most likely the one returned by \ref RETRO_ENVIRONMENT_GET_LANGUAGE.
    *
    * Structure is the same, but usage is slightly different:
    *
    * \li All text (except for keys and option values)
    *     should be written in whichever language
    *     is returned by \c RETRO_ENVIRONMENT_GET_LANGUAGE.
    * \li All fields besides keys and option values may be \c NULL,
    *     in which case the corresponding string in \c us
    *     is used instead.
    * \li All \ref retro_core_option_v2_definition::default_value "default option values"
    *     are taken from \c us.
    *     The defaults in this field are ignored.
    *
    * May be \c NULL, in which case \c us is used instead.
    */
    local: *core_options_v2;
}

/**
* Called by the frontend to determine if any core option's visibility has changed.
*
* Each time a frontend sets a core option,
* it should call this function to see if
* any core option should be made visible or invisible.
*
* May also be called after \ref retro_load_game "loading a game",
* to determine what the initial visibility of each option should be.
*
* Within this function, the core must update the visibility
* of any dynamically-hidden options
* using \ref RETRO_ENVIRONMENT_SET_CORE_OPTIONS_DISPLAY.
*
* @note All core options are visible by default,
* even during this function's first call.
*
* @return \c true if any core option's visibility was adjusted
* since the last call to this function.
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_DISPLAY
* @see retro_core_option_display
*/
core_options_update_display_callback_t :: #type () -> bool #c_call;

/**
* Callback registered by the core for the frontend to use
* when setting the visibility of each core option.
*
* @see RETRO_ENVIRONMENT_SET_CORE_OPTIONS_DISPLAY
* @see retro_core_option_display
*/
core_options_update_display_callback :: struct {
    /**
    * @copydoc retro_core_options_update_display_callback_t
    *
    * Set by the core.
    */
    callback: core_options_update_display_callback_t;
}

/** @} */
game_info :: struct {
    /* Path to game, UTF-8 encoded.
    * Sometimes used as a reference for building other paths.
    * May be NULL if game was loaded from stdin or similar,
    * but in this case some cores will be unable to load `data`.
    * So, it is preferable to fabricate something here instead
    * of passing NULL, which will help more cores to succeed.
    * retro_system_info::need_fullpath requires
    * that this path is valid. */
    path: *u8;

    /* Memory buffer of loaded game. Will be NULL
    * if need_fullpath was set. */
    data: *void;

    size: u64; /* Size of memory buffer. */
    meta: *u8; /* String of implementation specific meta-data. */
}

/**
* A frame buffer owned by the frontend that a core may use for rendering.
*
* @see GET_CURRENT_SOFTWARE_FRAMEBUFFER
* @see retro_video_refresh_t
*/
framebuffer :: struct {
    /**
    * Pointer to the beginning of the framebuffer provided by the frontend.
    * The initial contents of this buffer are unspecified,
    * as is the means used to map the memory;
    * this may be defined in software,
    * or it may be GPU memory mapped to RAM.
    *
    * If the framebuffer is used,
    * this pointer must be passed to \c retro_video_refresh_t as-is.
    * It is undefined behavior to pass an offset to this pointer.
    *
    * @warning This pointer is only guaranteed to be valid
    * for the duration of the same \c retro_run iteration
    * \ref GET_CURRENT_SOFTWARE_FRAMEBUFFER "that requested the framebuffer".
    * Reuse of this pointer is undefined.
    */
    data:         *void;

    /**
    * The width of the framebuffer given in \c data, in pixels.
    * Set by the core.
    *
    * @warning If the framebuffer is used,
    * this value must be passed to \c retro_video_refresh_t as-is.
    * It is undefined behavior to try to render \c data with any other width.
    */
    width:        u32;

    /**
    * The height of the framebuffer given in \c data, in pixels.
    * Set by the core.
    *
    * @warning If the framebuffer is used,
    * this value must be passed to \c retro_video_refresh_t as-is.
    * It is undefined behavior to try to render \c data with any other height.
    */
    height:       u32;

    /**
    * The distance between the start of one scanline and the beginning of the next, in bytes.
    * In practice this is usually equal to \c width times the pixel size,
    * but that's not guaranteed.
    * Sometimes called the "stride".
    *
    * @setby{frontend}
    * @warning If the framebuffer is used,
    * this value must be passed to \c retro_video_refresh_t as-is.
    * It is undefined to try to render \c data with any other pitch.
    */
    pitch:        u64;

    /**
    * The pixel format of the returned framebuffer.
    * May be different than the format specified by the core in \c RETRO_ENVIRONMENT_SET_PIXEL_FORMAT,
    * e.g. due to conversions.
    * Set by the frontend.
    *
    * @see RETRO_ENVIRONMENT_SET_PIXEL_FORMAT
    */
    format:       pixel_format;

    /**
    * One or more \ref RETRO_MEMORY_ACCESS "memory access flags"
    * that specify how the core will access the memory in \c data.
    *
    * @setby{core}
    */
    access_flags: u32;

    /**
    * Zero or more \ref RETRO_MEMORY_TYPE "memory type flags"
    * that describe how the framebuffer's memory has been mapped.
    *
    * @setby{frontend}
    */
    memory_flags: u32;
}

/**
* Parameters that govern when and how the core takes control
* of fast-forwarding mode.
*/
fastforwarding_override :: struct {
    /**
    * The factor by which the core will be sped up
    * when \c fastforward is \c true.
    * This value is used as follows:
    *
    * @li A value greater than 1.0 will run the core at
    *     the specified multiple of normal speed.
    *     For example, a value of 5.0
    *     combined with a normal target rate of 60 FPS
    *     will result in a target rate of 300 FPS.
    *     The actual rate may be lower if the host's hardware can't keep up.
    * @li A value of 1.0 will run the core at normal speed.
    * @li A value between 0.0 (inclusive) and 1.0 (exclusive)
    *     will run the core as fast as the host system can manage.
    * @li A negative value will let the frontend choose a factor.
    * @li An infinite value or \c NaN results in undefined behavior.
    *
    * @attention Setting this value to less than 1.0 will \em not
    * slow down the core.
    */
    ratio:          float;

    /**
    * If \c true, the frontend should activate fast-forwarding
    * until this field is set to \c false or the core is unloaded.
    */
    fastforward:    bool;

    /**
    * If \c true, the frontend should display an on-screen notification or icon
    * while \c fastforward is \c true (where supported).
    * Otherwise, the frontend should not display any such notification.
    */
    notification:   bool;

    /**
    * If \c true, the core has exclusive control
    * over enabling and disabling fast-forwarding
    * via the \c fastforward field.
    * The frontend will not be able to start or stop fast-forwarding
    * until this field is set to \c false or the core is unloaded.
    */
    inhibit_toggle: bool;
}

/**
* Details about the actual rate an implementation is calling \c retro_run() at.
*
* @see RETRO_ENVIRONMENT_GET_THROTTLE_STATE
*/
throttle_state :: struct {
    /**
    * The current throttling mode.
    *
    * @note Should be one of the \c RETRO_THROTTLE_* values.
    * @see RETRO_THROTTLE_NONE
    * @see RETRO_THROTTLE_FRAME_STEPPING
    * @see RETRO_THROTTLE_FAST_FORWARD
    * @see RETRO_THROTTLE_SLOW_MOTION
    * @see RETRO_THROTTLE_REWINDING
    * @see RETRO_THROTTLE_VSYNC
    * @see RETRO_THROTTLE_UNBLOCKED
    */
    mode: u32;

    /**
    * How many times per second the frontend aims to call retro_run.
    *
    * @note Depending on the mode, it can be 0 if there is no known fixed rate.
    * This won't be accurate if the total processing time of the core and
    * the frontend is longer than what is available for one frame.
    */
    rate: float;
}

microphone :: struct {}
/**
* Opaque handle to a microphone that's been opened for use.
* The underlying object is accessed or created with \c retro_microphone_interface_t.
*/
microphone_t :: microphone;

/**
* Parameters for configuring a microphone.
* Some of these might not be honored,
* depending on the available hardware and driver configuration.
*/
microphone_params :: struct {
    /**
    * The desired sample rate of the microphone's input, in Hz.
    * The microphone's input will be resampled,
    * so cores can ask for whichever frequency they need.
    *
    * If zero, some reasonable default will be provided by the frontend
    * (usually from its config file).
    *
    * @see retro_get_mic_rate_t
    */
    rate: u32;
}

/**
* Parameters for configuring a microphone.
* Some of these might not be honored,
* depending on the available hardware and driver configuration.
*/
microphone_params_t :: microphone_params;

/**
* @copydoc retro_microphone_interface::open_mic
*/
open_mic_t :: #type (params: *microphone_params_t) -> *microphone_t #c_call;

/**
* @copydoc retro_microphone_interface::close_mic
*/
close_mic_t :: #type (microphone: *microphone_t) -> void #c_call;

/**
* @copydoc retro_microphone_interface::get_params
*/
get_mic_params_t :: #type (microphone: *microphone_t, params: *microphone_params_t) -> bool #c_call;

/**
* @copydoc retro_microphone_interface::set_mic_state
*/
set_mic_state_t :: #type (microphone: *microphone_t, state: bool) -> bool #c_call;

/**
* @copydoc retro_microphone_interface::get_mic_state
*/
get_mic_state_t :: #type (microphone: *microphone_t) -> bool #c_call;

/**
* @copydoc retro_microphone_interface::read_mic
*/
read_mic_t :: #type (microphone: *microphone_t, samples: *s16, num_samples: u64) -> s32 #c_call;

/**
* An interface for querying the microphone and accessing data read from it.
*
* @see RETRO_ENVIRONMENT_GET_MICROPHONE_INTERFACE
*/
microphone_interface :: struct {
    /**
    * The version of this microphone interface.
    * Set by the core to request a particular version,
    * and set by the frontend to indicate the returned version.
    * 0 indicates that the interface is invalid or uninitialized.
    */
    interface_version: u32;

    /**
    * Initializes a new microphone.
    * Assuming that microphone support is enabled and provided by the frontend,
    * cores may call this function whenever necessary.
    * A microphone could be opened throughout a core's lifetime,
    * or it could wait until a microphone is plugged in to the emulated device.
    *
    * The returned handle will be valid until it's freed,
    * even if the audio driver is reinitialized.
    *
    * This function is not guaranteed to be thread-safe.
    *
    * @param[in] args Parameters used to create the microphone.
    * May be \c NULL, in which case the default value of each parameter will be used.
    *
    * @returns Pointer to the newly-opened microphone,
    * or \c NULL if one couldn't be opened.
    * This likely means that no microphone is plugged in and recognized,
    * or the maximum number of supported microphones has been reached.
    *
    * @note Microphones are \em inactive by default;
    * to begin capturing audio, call \c set_mic_state.
    * @see retro_microphone_params_t
    */
    open_mic:          open_mic_t;

    /**
    * Closes a microphone that was initialized with \c open_mic.
    * Calling this function will stop all microphone activity
    * and free up the resources that it allocated.
    * Afterwards, the handle is invalid and must not be used.
    *
    * A frontend may close opened microphones when unloading content,
    * but this behavior is not guaranteed.
    * Cores should close their microphones when exiting, just to be safe.
    *
    * @param microphone Pointer to the microphone that was allocated by \c open_mic.
    * If \c NULL, this function does nothing.
    *
    * @note The handle might be reused if another microphone is opened later.
    */
    close_mic:         close_mic_t;

    /**
    * Returns the configured parameters of this microphone.
    * These may differ from what was requested depending on
    * the driver and device configuration.
    *
    * Cores should check these values before they start fetching samples.
    *
    * Will not change after the mic was opened.
    *
    * @param[in] microphone Opaque handle to the microphone
    * whose parameters will be retrieved.
    * @param[out] params The parameters object that the
    * microphone's parameters will be copied to.
    *
    * @return \c true if the parameters were retrieved,
    * \c false if there was an error.
    */
    get_params:        get_mic_params_t;

    /**
    * Enables or disables the given microphone.
    * Microphones are disabled by default
    * and must be explicitly enabled before they can be used.
    * Disabled microphones will not process incoming audio samples,
    * and will therefore have minimal impact on overall performance.
    * Cores may enable microphones throughout their lifetime,
    * or only for periods where they're needed.
    *
    * Cores that accept microphone input should be able to operate without it;
    * we suggest substituting silence in this case.
    *
    * @param microphone Opaque handle to the microphone
    * whose state will be adjusted.
    * This will have been provided by \c open_mic.
    * @param state \c true if the microphone should receive audio input,
    * \c false if it should be idle.
    * @returns \c true if the microphone's state was successfully set,
    * \c false if \c microphone is invalid
    * or if there was an error.
    */
    set_mic_state:     set_mic_state_t;

    /**
    * Queries the active state of a microphone at the given index.
    * Will return whether the microphone is enabled,
    * even if the driver is paused.
    *
    * @param microphone Opaque handle to the microphone
    * whose state will be queried.
    * @return \c true if the provided \c microphone is valid and active,
    * \c false if not or if there was an error.
    */
    get_mic_state:     get_mic_state_t;

    /**
    * Retrieves the input processed by the microphone since the last call.
    * \em Must be called every frame unless \c microphone is disabled,
    * similar to how \c retro_audio_sample_batch_t works.
    *
    * @param[in] microphone Opaque handle to the microphone
    * whose recent input will be retrieved.
    * @param[out] samples The buffer that will be used to store the microphone's data.
    * Microphone input is in mono (i.e. one number per sample).
    * Should be large enough to accommodate the expected number of samples per frame;
    * for example, a 44.1kHz sample rate at 60 FPS would require space for 735 samples.
    * @param[in] num_samples The size of the data buffer in samples (\em not bytes).
    * Microphone input is in mono, so a "frame" and a "sample" are equivalent in length here.
    *
    * @return The number of samples that were copied into \c samples.
    * If \c microphone is pending driver initialization,
    * this function will copy silence of the requested length into \c samples.
    *
    * Will return -1 if the microphone is disabled,
    * the audio driver is paused,
    * or there was an error.
    */
    read_mic:          read_mic_t;
}

/**
* Describes how a device is being powered.
* @see RETRO_ENVIRONMENT_GET_DEVICE_POWER
*/
power_state :: enum u32 {
    UNKNOWN     :: 0;

    DISCHARGING :: 1;

    CHARGING    :: 2;

    CHARGED     :: 3;

    PLUGGED_IN  :: 4;

    RETRO_POWERSTATE_UNKNOWN     :: UNKNOWN;

    RETRO_POWERSTATE_DISCHARGING :: DISCHARGING;

    RETRO_POWERSTATE_CHARGING    :: CHARGING;

    RETRO_POWERSTATE_CHARGED     :: CHARGED;

    RETRO_POWERSTATE_PLUGGED_IN  :: PLUGGED_IN;
}

/**
* Describes the power state of the device running the frontend.
* @see RETRO_ENVIRONMENT_GET_DEVICE_POWER
*/
device_power :: struct {
    /**
    * The current state of the frontend's power usage.
    */
    state:   power_state;

    /**
    * A rough estimate of the amount of time remaining (in seconds)
    * before the device powers off.
    * This value depends on a variety of factors,
    * so it is not guaranteed to be accurate.
    *
    * Will be set to \c RETRO_POWERSTATE_NO_ESTIMATE if \c state does not equal \c RETRO_POWERSTATE_DISCHARGING.
    * May still be set to \c RETRO_POWERSTATE_NO_ESTIMATE if the frontend is unable to provide an estimate.
    */
    seconds: s32;

    /**
    * The approximate percentage of battery charge,
    * ranging from 0 to 100 (inclusive).
    * The device may power off before this reaches 0.
    *
    * The user might have configured their device
    * to stop charging before the battery is full,
    * so do not assume that this will be 100 in the \c RETRO_POWERSTATE_CHARGED state.
    */
    percent: s8;
}

/**
* Environment callback to give implementations a way of performing uncommon tasks.
*
* @note Extensible.
*
* @param cmd The command to run.
* @param data A pointer to the data associated with the command.
*
* @return Varies by callback,
* but will always return \c false if the command is not recognized.
*
* @see RETRO_ENVIRONMENT_SET_ROTATION
* @see retro_set_environment()
*/
environment_t :: #type (cmd: u32, data: *void) -> bool #c_call;

/**
* Render a frame.
*
* @note For performance reasons, it is highly recommended to have a frame
* that is packed in memory, i.e. pitch == width * byte_per_pixel.
* Certain graphic APIs, such as OpenGL ES, do not like textures
* that are not packed in memory.
*
* @param data A pointer to the frame buffer data with a pixel format of 15-bit \c 0RGB1555 native endian, unless changed with \c RETRO_ENVIRONMENT_SET_PIXEL_FORMAT.
* @param width The width of the frame buffer, in pixels.
* @param height The height frame buffer, in pixels.
* @param pitch The width of the frame buffer, in bytes.
*
* @see retro_set_video_refresh()
* @see RETRO_ENVIRONMENT_SET_PIXEL_FORMAT
* @see retro_pixel_format
*/
video_refresh_t :: #type (data: *void, width: u32, height: u32, pitch: u64) -> void #c_call;

/**
* Renders a single audio frame. Should only be used if implementation generates a single sample at a time.
*
* @param left The left audio sample represented as a signed 16-bit native endian.
* @param right The right audio sample represented as a signed 16-bit native endian.
*
* @see retro_set_audio_sample()
* @see retro_set_audio_sample_batch()
*/
audio_sample_t :: #type (left: s16, right: s16) -> void #c_call;

/**
* Renders multiple audio frames in one go.
*
* @note Only one of the audio callbacks must ever be used.
*
* @param data A pointer to the audio sample data pairs to render.
* @param frames The number of frames that are represented in the data. One frame
*     is defined as a sample of left and right channels, interleaved.
*     For example: <tt>int16_t buf[4] = { l, r, l, r };</tt> would be 2 frames.
*
* @return The number of frames that were processed.
*
* @see retro_set_audio_sample_batch()
* @see retro_set_audio_sample()
*/
audio_sample_batch_t :: #type (data: *s16, frames: u64) -> u64 #c_call;

/**
* Polls input.
*
* @see retro_set_input_poll()
*/
input_poll_t :: #type () -> void #c_call;

/**
* Queries for input for player 'port'.
*
* @param port Which player 'port' to query.
* @param device Which device to query for. Will be masked with \c RETRO_DEVICE_MASK.
* @param index The input index to retrieve.
* The exact semantics depend on the device type given in \c device.
* @param id The ID of which value to query, like \c RETRO_DEVICE_ID_JOYPAD_B.
* @returns Depends on the provided arguments,
* but will return 0 if their values are unsupported
* by the frontend or the backing physical device.
* @note Specialization of devices such as \c RETRO_DEVICE_JOYPAD_MULTITAP that
* have been set with \c retro_set_controller_port_device() will still use the
* higher level \c RETRO_DEVICE_JOYPAD to request input.
*
* @see retro_set_input_state()
* @see RETRO_DEVICE_NONE
* @see RETRO_DEVICE_JOYPAD
* @see RETRO_DEVICE_MOUSE
* @see RETRO_DEVICE_KEYBOARD
* @see RETRO_DEVICE_LIGHTGUN
* @see RETRO_DEVICE_ANALOG
* @see RETRO_DEVICE_POINTER
*/
input_state_t :: #type (port: u32, device: u32, index: u32, id: u32) -> s16 #c_call;

/**
* Sets the environment callback.
*
* @param cb The function which is used when making environment calls.
*
* @note Guaranteed to be called before \c retro_init().
*
* @see RETRO_ENVIRONMENT
*/
set_environment :: (cb: environment_t) -> void #foreign "retro_set_environment";

/**
* Sets the video refresh callback.
*
* @param cb The function which is used when rendering a frame.
*
* @note Guaranteed to have been called before the first call to \c retro_run() is made.
*/
set_video_refresh :: (cb: video_refresh_t) -> void #foreign "retro_set_video_refresh";

/**
* Sets the audio sample callback.
*
* @param cb The function which is used when rendering a single audio frame.
*
* @note Guaranteed to have been called before the first call to \c retro_run() is made.
*/
set_audio_sample :: (cb: audio_sample_t) -> void #foreign "retro_set_audio_sample";

/**
* Sets the audio sample batch callback.
*
* @param cb The function which is used when rendering multiple audio frames in one go.
*
* @note Guaranteed to have been called before the first call to \c retro_run() is made.
*/
set_audio_sample_batch :: (cb: audio_sample_batch_t) -> void #foreign "retro_set_audio_sample_batch";

/**
* Sets the input poll callback.
*
* @param cb The function which is used to poll the active input.
*
* @note Guaranteed to have been called before the first call to \c retro_run() is made.
*/
set_input_poll :: (cb: input_poll_t) -> void #foreign "retro_set_input_poll";

/**
* Sets the input state callback.
*
* @param cb The function which is used to query the input state.
*
*@note Guaranteed to have been called before the first call to \c retro_run() is made.
*/
set_input_state :: (cb: input_state_t) -> void #foreign "retro_set_input_state";

/**
* Called by the frontend when initializing a libretro core.
*
* @warning There are many possible "gotchas" with global state in dynamic libraries.
* Here are some to keep in mind:
* <ul>
* <li>Do not assume that the core was loaded by the operating system
* for the first time within this call.
* It may have been statically linked or retained from a previous session.
* Consequently, cores must not rely on global variables being initialized
* to their default values before this function is called;
* this also goes for object constructors in C++.
* <li>Although C++ requires that constructors be called for global variables,
* it does not require that their destructors be called
* if stored within a dynamic library's global scope.
* <li>If the core is statically linked to the frontend,
* global variables may be initialized when the frontend itself is initially executed.
* </ul>
* @see retro_deinit
*/
init :: () -> void #foreign "retro_init";

/**
* Called by the frontend when deinitializing a libretro core.
* The core must release all of its allocated resources before this function returns.
*
* @warning There are many possible "gotchas" with global state in dynamic libraries.
* Here are some to keep in mind:
* <ul>
* <li>Do not assume that the operating system will unload the core after this function returns,
* as the core may be linked statically or retained in memory.
* Cores should use this function to clean up all allocated resources
* and reset all global variables to their default states.
* <li>Do not assume that this core won't be loaded again after this function returns.
* It may be kept in memory by the frontend for later use,
* or it may be statically linked.
* Therefore, all global variables should be reset to their default states within this function.
* <li>C++ does not require that destructors be called
* for variables within a dynamic library's global scope.
* Therefore, global objects that own dynamically-managed resources
* (such as \c std::string or <tt>std::vector</tt>)
* should be kept behind pointers that are explicitly deallocated within this function.
* </ul>
* @see retro_init
*/
deinit :: () -> void #foreign "retro_deinit";

/**
* Retrieves which version of the libretro API is being used.
*
* @note This is used to validate ABI compatibility when the API is revised.
*
* @return Must return \c RETRO_API_VERSION.
*
* @see RETRO_API_VERSION
*/
api_version :: () -> u32 #foreign "retro_api_version";

/**
* Gets statically known system info.
*
* @note Can be called at any time, even before retro_init().
*
* @param info A pointer to a \c retro_system_info where the info is to be loaded into. This must be statically allocated.
*/
get_system_info :: (info: *system_info) -> void #foreign "retro_get_system_info";

/**
* Gets information about system audio/video timings and geometry.
*
* @note Can be called only after \c retro_load_game() has successfully completed.
*
* @note The implementation of this function might not initialize every variable
* if needed. For example, \c geom.aspect_ratio might not be initialized if
* the core doesn't desire a particular aspect ratio.
*
* @param info A pointer to a \c retro_system_av_info where the audio/video information should be loaded into.
*
* @see retro_system_av_info
*/
get_system_av_info :: (info: *system_av_info) -> void #foreign "retro_get_system_av_info";

/**
* Sets device to be used for player 'port'.
*
* By default, \c RETRO_DEVICE_JOYPAD is assumed to be plugged into all
* available ports.
*
* @note Setting a particular device type is not a guarantee that libretro cores
* will only poll input based on that particular device type. It is only a
* hint to the libretro core when a core cannot automatically detect the
* appropriate input device type on its own. It is also relevant when a
* core can change its behavior depending on device type.
*
* @note As part of the core's implementation of retro_set_controller_port_device,
* the core should call \c RETRO_ENVIRONMENT_SET_INPUT_DESCRIPTORS to notify the
* frontend if the descriptions for any controls have changed as a
* result of changing the device type.
*
* @param port Which port to set the device for, usually indicates the player number.
* @param device Which device the given port is using. By default, \c RETRO_DEVICE_JOYPAD is assumed for all ports.
*
* @see RETRO_DEVICE_NONE
* @see RETRO_DEVICE_JOYPAD
* @see RETRO_DEVICE_MOUSE
* @see RETRO_DEVICE_KEYBOARD
* @see RETRO_DEVICE_LIGHTGUN
* @see RETRO_DEVICE_ANALOG
* @see RETRO_DEVICE_POINTER
* @see RETRO_ENVIRONMENT_SET_CONTROLLER_INFO
*/
set_controller_port_device :: (port: u32, device: u32) -> void #foreign "retro_set_controller_port_device";

/**
* Resets the currently-loaded game.
* Cores should treat this as a soft reset (i.e. an emulated reset button) if possible,
* but hard resets are acceptable.
*/
reset :: () -> void #foreign "retro_reset";

/**
* Runs the game for one video frame.
*
* During \c retro_run(), the \c retro_input_poll_t callback must be called at least once.
*
* @note If a frame is not rendered for reasons where a game "dropped" a frame,
* this still counts as a frame, and \c retro_run() should explicitly dupe
* a frame if \c RETRO_ENVIRONMENT_GET_CAN_DUPE returns true. In this case,
* the video callback can take a NULL argument for data.
*
* @see retro_input_poll_t
*/
run :: () -> void #foreign "retro_run";

/**
* Returns the amount of data the implementation requires to serialize internal state (save states).
*
* @note Between calls to \c retro_load_game() and \c retro_unload_game(), the
* returned size is never allowed to be larger than a previous returned
* value, to ensure that the frontend can allocate a save state buffer once.
*
* @return The amount of data the implementation requires to serialize the internal state.
*
* @see retro_serialize()
*/
serialize_size :: () -> u64 #foreign "retro_serialize_size";

/**
* Serializes the internal state.
*
* @param data A pointer to where the serialized data should be saved to.
* @param size The size of the memory.
*
* @return If failed, or size is lower than \c retro_serialize_size(), it
* should return false. On success, it will return true.
*
* @see retro_serialize_size()
* @see retro_unserialize()
*/
serialize :: (data: *void, len: u64) -> bool #foreign "retro_serialize";

/**
* Unserialize the given state data, and load it into the internal state.
*
* @return Returns true if loading the state was successful, false otherwise.
*
* @see retro_serialize()
*/
unserialize :: (data: *void, len: u64) -> bool #foreign "retro_unserialize";

/**
* Reset all the active cheats to their default disabled state.
*
* @see retro_cheat_set()
*/
cheat_reset :: () -> void #foreign "retro_cheat_reset";

/**
* Enable or disable a cheat.
*
* @param index The index of the cheat to act upon.
* @param enabled Whether to enable or disable the cheat.
* @param code A string of the code used for the cheat.
*
* @see retro_cheat_reset()
*/
cheat_set :: (index: u32, enabled: bool, code: *u8) -> void #foreign "retro_cheat_set";

/**
* Loads a game.
*
* @param game A pointer to a \c retro_game_info detailing information about the game to load.
* May be \c NULL if the core is loaded without content.
*
* @return Will return true when the game was loaded successfully, or false otherwise.
*
* @see retro_game_info
* @see RETRO_ENVIRONMENT_SET_SUPPORT_NO_GAME
*/
load_game :: (game: *game_info) -> bool #foreign "retro_load_game";

/**
* Called when the frontend has loaded one or more "special" content files,
* typically through subsystems.
*
* @note Only necessary for cores that support subsystems.
* Others may return \c false or delegate to <tt>retro_load_game</tt>.
*
* @param game_type The type of game to load,
* as determined by \c retro_subsystem_info.
* @param info A pointer to an array of \c retro_game_info objects
* providing information about the loaded content.
* @param num_info The number of \c retro_game_info objects passed into the info parameter.
* @return \c true if loading is successful, false otherwise.
* If the core returns \c false,
* the frontend should abort the core
* and return to its main menu (if applicable).
*
* @see RETRO_ENVIRONMENT_GET_GAME_INFO_EXT
* @see RETRO_ENVIRONMENT_SET_SUBSYSTEM_INFO
* @see retro_load_game()
* @see retro_subsystem_info
*/
load_game_special :: (game_type: u32, info: *game_info, num_info: u64) -> bool #foreign "retro_load_game_special";

/**
* Unloads the currently loaded game.
*
* @note This is called before \c retro_deinit(void).
*
* @see retro_load_game()
* @see retro_deinit()
*/
unload_game :: () -> void #foreign "retro_unload_game";

/**
* Gets the region of the actively loaded content as either \c RETRO_REGION_NTSC or \c RETRO_REGION_PAL.
* @note This refers to the region of the content's intended television standard,
* not necessarily the region of the content's origin.
* For emulated consoles that don't use either standard
* (e.g. handhelds or post-HD platforms),
* the core should return \c RETRO_REGION_NTSC.
* @return The region of the actively loaded content.
*
* @see RETRO_REGION_NTSC
* @see RETRO_REGION_PAL
*/
get_region :: () -> u32 #foreign "retro_get_region";

/**
* Get a region of memory.
*
* @param id The ID for the memory block that's desired to retrieve. Can be \c RETRO_MEMORY_SAVE_RAM, \c RETRO_MEMORY_RTC, \c RETRO_MEMORY_SYSTEM_RAM, or \c RETRO_MEMORY_VIDEO_RAM.
*
* @return A pointer to the desired region of memory, or NULL when not available.
*
* @see RETRO_MEMORY_SAVE_RAM
* @see RETRO_MEMORY_RTC
* @see RETRO_MEMORY_SYSTEM_RAM
* @see RETRO_MEMORY_VIDEO_RAM
*/
get_memory_data :: (id: u32) -> *void #foreign "retro_get_memory_data";

/**
* Gets the size of the given region of memory.
*
* @param id The ID for the memory block to check the size of. Can be RETRO_MEMORY_SAVE_RAM, RETRO_MEMORY_RTC, RETRO_MEMORY_SYSTEM_RAM, or RETRO_MEMORY_VIDEO_RAM.
*
* @return The size of the region in memory, or 0 when not available.
*
* @see RETRO_MEMORY_SAVE_RAM
* @see RETRO_MEMORY_RTC
* @see RETRO_MEMORY_SYSTEM_RAM
* @see RETRO_MEMORY_VIDEO_RAM
*/
get_memory_size :: (id: u32) -> u64 #foreign "retro_get_memory_size";

#scope_file

#import "Basic"; // For assert


#run {
    {
        instance: vfs_interface;
        assert(((cast(*void)(*instance.get_path)) - cast(*void)(*instance)) == 0, "vfs_interface.get_path has unexpected offset % instead of 0", ((cast(*void)(*instance.get_path)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.get_path)) == 8, "vfs_interface.get_path has unexpected size % instead of 8", size_of(type_of(vfs_interface.get_path)));
        assert(((cast(*void)(*instance.open)) - cast(*void)(*instance)) == 8, "vfs_interface.open has unexpected offset % instead of 8", ((cast(*void)(*instance.open)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.open)) == 8, "vfs_interface.open has unexpected size % instead of 8", size_of(type_of(vfs_interface.open)));
        assert(((cast(*void)(*instance.close)) - cast(*void)(*instance)) == 16, "vfs_interface.close has unexpected offset % instead of 16", ((cast(*void)(*instance.close)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.close)) == 8, "vfs_interface.close has unexpected size % instead of 8", size_of(type_of(vfs_interface.close)));
        assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 24, "vfs_interface.size has unexpected offset % instead of 24", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.size)) == 8, "vfs_interface.size has unexpected size % instead of 8", size_of(type_of(vfs_interface.size)));
        assert(((cast(*void)(*instance.tell)) - cast(*void)(*instance)) == 32, "vfs_interface.tell has unexpected offset % instead of 32", ((cast(*void)(*instance.tell)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.tell)) == 8, "vfs_interface.tell has unexpected size % instead of 8", size_of(type_of(vfs_interface.tell)));
        assert(((cast(*void)(*instance.seek)) - cast(*void)(*instance)) == 40, "vfs_interface.seek has unexpected offset % instead of 40", ((cast(*void)(*instance.seek)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.seek)) == 8, "vfs_interface.seek has unexpected size % instead of 8", size_of(type_of(vfs_interface.seek)));
        assert(((cast(*void)(*instance.read)) - cast(*void)(*instance)) == 48, "vfs_interface.read has unexpected offset % instead of 48", ((cast(*void)(*instance.read)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.read)) == 8, "vfs_interface.read has unexpected size % instead of 8", size_of(type_of(vfs_interface.read)));
        assert(((cast(*void)(*instance.write)) - cast(*void)(*instance)) == 56, "vfs_interface.write has unexpected offset % instead of 56", ((cast(*void)(*instance.write)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.write)) == 8, "vfs_interface.write has unexpected size % instead of 8", size_of(type_of(vfs_interface.write)));
        assert(((cast(*void)(*instance.flush)) - cast(*void)(*instance)) == 64, "vfs_interface.flush has unexpected offset % instead of 64", ((cast(*void)(*instance.flush)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.flush)) == 8, "vfs_interface.flush has unexpected size % instead of 8", size_of(type_of(vfs_interface.flush)));
        assert(((cast(*void)(*instance._remove)) - cast(*void)(*instance)) == 72, "vfs_interface._remove has unexpected offset % instead of 72", ((cast(*void)(*instance._remove)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface._remove)) == 8, "vfs_interface._remove has unexpected size % instead of 8", size_of(type_of(vfs_interface._remove)));
        assert(((cast(*void)(*instance.rename)) - cast(*void)(*instance)) == 80, "vfs_interface.rename has unexpected offset % instead of 80", ((cast(*void)(*instance.rename)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.rename)) == 8, "vfs_interface.rename has unexpected size % instead of 8", size_of(type_of(vfs_interface.rename)));
        assert(((cast(*void)(*instance.truncate)) - cast(*void)(*instance)) == 88, "vfs_interface.truncate has unexpected offset % instead of 88", ((cast(*void)(*instance.truncate)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.truncate)) == 8, "vfs_interface.truncate has unexpected size % instead of 8", size_of(type_of(vfs_interface.truncate)));
        assert(((cast(*void)(*instance.stat)) - cast(*void)(*instance)) == 96, "vfs_interface.stat has unexpected offset % instead of 96", ((cast(*void)(*instance.stat)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.stat)) == 8, "vfs_interface.stat has unexpected size % instead of 8", size_of(type_of(vfs_interface.stat)));
        assert(((cast(*void)(*instance.mkdir)) - cast(*void)(*instance)) == 104, "vfs_interface.mkdir has unexpected offset % instead of 104", ((cast(*void)(*instance.mkdir)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.mkdir)) == 8, "vfs_interface.mkdir has unexpected size % instead of 8", size_of(type_of(vfs_interface.mkdir)));
        assert(((cast(*void)(*instance.opendir)) - cast(*void)(*instance)) == 112, "vfs_interface.opendir has unexpected offset % instead of 112", ((cast(*void)(*instance.opendir)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.opendir)) == 8, "vfs_interface.opendir has unexpected size % instead of 8", size_of(type_of(vfs_interface.opendir)));
        assert(((cast(*void)(*instance.readdir)) - cast(*void)(*instance)) == 120, "vfs_interface.readdir has unexpected offset % instead of 120", ((cast(*void)(*instance.readdir)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.readdir)) == 8, "vfs_interface.readdir has unexpected size % instead of 8", size_of(type_of(vfs_interface.readdir)));
        assert(((cast(*void)(*instance.dirent_get_name)) - cast(*void)(*instance)) == 128, "vfs_interface.dirent_get_name has unexpected offset % instead of 128", ((cast(*void)(*instance.dirent_get_name)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.dirent_get_name)) == 8, "vfs_interface.dirent_get_name has unexpected size % instead of 8", size_of(type_of(vfs_interface.dirent_get_name)));
        assert(((cast(*void)(*instance.dirent_is_dir)) - cast(*void)(*instance)) == 136, "vfs_interface.dirent_is_dir has unexpected offset % instead of 136", ((cast(*void)(*instance.dirent_is_dir)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.dirent_is_dir)) == 8, "vfs_interface.dirent_is_dir has unexpected size % instead of 8", size_of(type_of(vfs_interface.dirent_is_dir)));
        assert(((cast(*void)(*instance.closedir)) - cast(*void)(*instance)) == 144, "vfs_interface.closedir has unexpected offset % instead of 144", ((cast(*void)(*instance.closedir)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface.closedir)) == 8, "vfs_interface.closedir has unexpected size % instead of 8", size_of(type_of(vfs_interface.closedir)));
        assert(size_of(vfs_interface) == 152, "vfs_interface has size % instead of 152", size_of(vfs_interface));
    }

    {
        instance: vfs_interface_info;
        assert(((cast(*void)(*instance.required_interface_version)) - cast(*void)(*instance)) == 0, "vfs_interface_info.required_interface_version has unexpected offset % instead of 0", ((cast(*void)(*instance.required_interface_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface_info.required_interface_version)) == 4, "vfs_interface_info.required_interface_version has unexpected size % instead of 4", size_of(type_of(vfs_interface_info.required_interface_version)));
        assert(((cast(*void)(*instance.iface)) - cast(*void)(*instance)) == 8, "vfs_interface_info.iface has unexpected offset % instead of 8", ((cast(*void)(*instance.iface)) - cast(*void)(*instance)));
        assert(size_of(type_of(vfs_interface_info.iface)) == 8, "vfs_interface_info.iface has unexpected size % instead of 8", size_of(type_of(vfs_interface_info.iface)));
        assert(size_of(vfs_interface_info) == 16, "vfs_interface_info has size % instead of 16", size_of(vfs_interface_info));
    }

    {
        instance: hw_render_interface;
        assert(((cast(*void)(*instance.interface_type)) - cast(*void)(*instance)) == 0, "hw_render_interface.interface_type has unexpected offset % instead of 0", ((cast(*void)(*instance.interface_type)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_interface.interface_type)) == 4, "hw_render_interface.interface_type has unexpected size % instead of 4", size_of(type_of(hw_render_interface.interface_type)));
        assert(((cast(*void)(*instance.interface_version)) - cast(*void)(*instance)) == 4, "hw_render_interface.interface_version has unexpected offset % instead of 4", ((cast(*void)(*instance.interface_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_interface.interface_version)) == 4, "hw_render_interface.interface_version has unexpected size % instead of 4", size_of(type_of(hw_render_interface.interface_version)));
        assert(size_of(hw_render_interface) == 8, "hw_render_interface has size % instead of 8", size_of(hw_render_interface));
    }

    {
        instance: led_interface;
        assert(((cast(*void)(*instance.set_led_state)) - cast(*void)(*instance)) == 0, "led_interface.set_led_state has unexpected offset % instead of 0", ((cast(*void)(*instance.set_led_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(led_interface.set_led_state)) == 8, "led_interface.set_led_state has unexpected size % instead of 8", size_of(type_of(led_interface.set_led_state)));
        assert(size_of(led_interface) == 8, "led_interface has size % instead of 8", size_of(led_interface));
    }

    {
        instance: midi_interface;
        assert(((cast(*void)(*instance.input_enabled)) - cast(*void)(*instance)) == 0, "midi_interface.input_enabled has unexpected offset % instead of 0", ((cast(*void)(*instance.input_enabled)) - cast(*void)(*instance)));
        assert(size_of(type_of(midi_interface.input_enabled)) == 8, "midi_interface.input_enabled has unexpected size % instead of 8", size_of(type_of(midi_interface.input_enabled)));
        assert(((cast(*void)(*instance.output_enabled)) - cast(*void)(*instance)) == 8, "midi_interface.output_enabled has unexpected offset % instead of 8", ((cast(*void)(*instance.output_enabled)) - cast(*void)(*instance)));
        assert(size_of(type_of(midi_interface.output_enabled)) == 8, "midi_interface.output_enabled has unexpected size % instead of 8", size_of(type_of(midi_interface.output_enabled)));
        assert(((cast(*void)(*instance.read)) - cast(*void)(*instance)) == 16, "midi_interface.read has unexpected offset % instead of 16", ((cast(*void)(*instance.read)) - cast(*void)(*instance)));
        assert(size_of(type_of(midi_interface.read)) == 8, "midi_interface.read has unexpected size % instead of 8", size_of(type_of(midi_interface.read)));
        assert(((cast(*void)(*instance.write)) - cast(*void)(*instance)) == 24, "midi_interface.write has unexpected offset % instead of 24", ((cast(*void)(*instance.write)) - cast(*void)(*instance)));
        assert(size_of(type_of(midi_interface.write)) == 8, "midi_interface.write has unexpected size % instead of 8", size_of(type_of(midi_interface.write)));
        assert(((cast(*void)(*instance.flush)) - cast(*void)(*instance)) == 32, "midi_interface.flush has unexpected offset % instead of 32", ((cast(*void)(*instance.flush)) - cast(*void)(*instance)));
        assert(size_of(type_of(midi_interface.flush)) == 8, "midi_interface.flush has unexpected size % instead of 8", size_of(type_of(midi_interface.flush)));
        assert(size_of(midi_interface) == 40, "midi_interface has size % instead of 40", size_of(midi_interface));
    }

    {
        instance: hw_render_context_negotiation_interface;
        assert(((cast(*void)(*instance.interface_type)) - cast(*void)(*instance)) == 0, "hw_render_context_negotiation_interface.interface_type has unexpected offset % instead of 0", ((cast(*void)(*instance.interface_type)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_context_negotiation_interface.interface_type)) == 4, "hw_render_context_negotiation_interface.interface_type has unexpected size % instead of 4", size_of(type_of(hw_render_context_negotiation_interface.interface_type)));
        assert(((cast(*void)(*instance.interface_version)) - cast(*void)(*instance)) == 4, "hw_render_context_negotiation_interface.interface_version has unexpected offset % instead of 4", ((cast(*void)(*instance.interface_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_context_negotiation_interface.interface_version)) == 4, "hw_render_context_negotiation_interface.interface_version has unexpected size % instead of 4", size_of(type_of(hw_render_context_negotiation_interface.interface_version)));
        assert(size_of(hw_render_context_negotiation_interface) == 8, "hw_render_context_negotiation_interface has size % instead of 8", size_of(hw_render_context_negotiation_interface));
    }

    {
        instance: memory_descriptor;
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 0, "memory_descriptor.flags has unexpected offset % instead of 0", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.flags)) == 8, "memory_descriptor.flags has unexpected size % instead of 8", size_of(type_of(memory_descriptor.flags)));
        assert(((cast(*void)(*instance.ptr)) - cast(*void)(*instance)) == 8, "memory_descriptor.ptr has unexpected offset % instead of 8", ((cast(*void)(*instance.ptr)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.ptr)) == 8, "memory_descriptor.ptr has unexpected size % instead of 8", size_of(type_of(memory_descriptor.ptr)));
        assert(((cast(*void)(*instance.offset)) - cast(*void)(*instance)) == 16, "memory_descriptor.offset has unexpected offset % instead of 16", ((cast(*void)(*instance.offset)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.offset)) == 8, "memory_descriptor.offset has unexpected size % instead of 8", size_of(type_of(memory_descriptor.offset)));
        assert(((cast(*void)(*instance.start)) - cast(*void)(*instance)) == 24, "memory_descriptor.start has unexpected offset % instead of 24", ((cast(*void)(*instance.start)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.start)) == 8, "memory_descriptor.start has unexpected size % instead of 8", size_of(type_of(memory_descriptor.start)));
        assert(((cast(*void)(*instance.select)) - cast(*void)(*instance)) == 32, "memory_descriptor.select has unexpected offset % instead of 32", ((cast(*void)(*instance.select)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.select)) == 8, "memory_descriptor.select has unexpected size % instead of 8", size_of(type_of(memory_descriptor.select)));
        assert(((cast(*void)(*instance.disconnect)) - cast(*void)(*instance)) == 40, "memory_descriptor.disconnect has unexpected offset % instead of 40", ((cast(*void)(*instance.disconnect)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.disconnect)) == 8, "memory_descriptor.disconnect has unexpected size % instead of 8", size_of(type_of(memory_descriptor.disconnect)));
        assert(((cast(*void)(*instance.len)) - cast(*void)(*instance)) == 48, "memory_descriptor.len has unexpected offset % instead of 48", ((cast(*void)(*instance.len)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.len)) == 8, "memory_descriptor.len has unexpected size % instead of 8", size_of(type_of(memory_descriptor.len)));
        assert(((cast(*void)(*instance.addrspace)) - cast(*void)(*instance)) == 56, "memory_descriptor.addrspace has unexpected offset % instead of 56", ((cast(*void)(*instance.addrspace)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_descriptor.addrspace)) == 8, "memory_descriptor.addrspace has unexpected size % instead of 8", size_of(type_of(memory_descriptor.addrspace)));
        assert(size_of(memory_descriptor) == 64, "memory_descriptor has size % instead of 64", size_of(memory_descriptor));
    }

    {
        instance: memory_map;
        assert(((cast(*void)(*instance.descriptors)) - cast(*void)(*instance)) == 0, "memory_map.descriptors has unexpected offset % instead of 0", ((cast(*void)(*instance.descriptors)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_map.descriptors)) == 8, "memory_map.descriptors has unexpected size % instead of 8", size_of(type_of(memory_map.descriptors)));
        assert(((cast(*void)(*instance.num_descriptors)) - cast(*void)(*instance)) == 8, "memory_map.num_descriptors has unexpected offset % instead of 8", ((cast(*void)(*instance.num_descriptors)) - cast(*void)(*instance)));
        assert(size_of(type_of(memory_map.num_descriptors)) == 4, "memory_map.num_descriptors has unexpected size % instead of 4", size_of(type_of(memory_map.num_descriptors)));
        assert(size_of(memory_map) == 16, "memory_map has size % instead of 16", size_of(memory_map));
    }

    {
        instance: controller_description;
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 0, "controller_description.desc has unexpected offset % instead of 0", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(controller_description.desc)) == 8, "controller_description.desc has unexpected size % instead of 8", size_of(type_of(controller_description.desc)));
        assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 8, "controller_description.id has unexpected offset % instead of 8", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
        assert(size_of(type_of(controller_description.id)) == 4, "controller_description.id has unexpected size % instead of 4", size_of(type_of(controller_description.id)));
        assert(size_of(controller_description) == 16, "controller_description has size % instead of 16", size_of(controller_description));
    }

    {
        instance: controller_info;
        assert(((cast(*void)(*instance.types)) - cast(*void)(*instance)) == 0, "controller_info.types has unexpected offset % instead of 0", ((cast(*void)(*instance.types)) - cast(*void)(*instance)));
        assert(size_of(type_of(controller_info.types)) == 8, "controller_info.types has unexpected size % instead of 8", size_of(type_of(controller_info.types)));
        assert(((cast(*void)(*instance.num_types)) - cast(*void)(*instance)) == 8, "controller_info.num_types has unexpected offset % instead of 8", ((cast(*void)(*instance.num_types)) - cast(*void)(*instance)));
        assert(size_of(type_of(controller_info.num_types)) == 4, "controller_info.num_types has unexpected size % instead of 4", size_of(type_of(controller_info.num_types)));
        assert(size_of(controller_info) == 16, "controller_info has size % instead of 16", size_of(controller_info));
    }

    {
        instance: subsystem_memory_info;
        assert(((cast(*void)(*instance.extension)) - cast(*void)(*instance)) == 0, "subsystem_memory_info.extension has unexpected offset % instead of 0", ((cast(*void)(*instance.extension)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_memory_info.extension)) == 8, "subsystem_memory_info.extension has unexpected size % instead of 8", size_of(type_of(subsystem_memory_info.extension)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "subsystem_memory_info.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_memory_info.type)) == 4, "subsystem_memory_info.type has unexpected size % instead of 4", size_of(type_of(subsystem_memory_info.type)));
        assert(size_of(subsystem_memory_info) == 16, "subsystem_memory_info has size % instead of 16", size_of(subsystem_memory_info));
    }

    {
        instance: subsystem_rom_info;
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 0, "subsystem_rom_info.desc has unexpected offset % instead of 0", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_rom_info.desc)) == 8, "subsystem_rom_info.desc has unexpected size % instead of 8", size_of(type_of(subsystem_rom_info.desc)));
        assert(((cast(*void)(*instance.valid_extensions)) - cast(*void)(*instance)) == 8, "subsystem_rom_info.valid_extensions has unexpected offset % instead of 8", ((cast(*void)(*instance.valid_extensions)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_rom_info.valid_extensions)) == 8, "subsystem_rom_info.valid_extensions has unexpected size % instead of 8", size_of(type_of(subsystem_rom_info.valid_extensions)));
        assert(((cast(*void)(*instance.need_fullpath)) - cast(*void)(*instance)) == 16, "subsystem_rom_info.need_fullpath has unexpected offset % instead of 16", ((cast(*void)(*instance.need_fullpath)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_rom_info.need_fullpath)) == 1, "subsystem_rom_info.need_fullpath has unexpected size % instead of 1", size_of(type_of(subsystem_rom_info.need_fullpath)));
        assert(((cast(*void)(*instance.block_extract)) - cast(*void)(*instance)) == 17, "subsystem_rom_info.block_extract has unexpected offset % instead of 17", ((cast(*void)(*instance.block_extract)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_rom_info.block_extract)) == 1, "subsystem_rom_info.block_extract has unexpected size % instead of 1", size_of(type_of(subsystem_rom_info.block_extract)));
        assert(((cast(*void)(*instance.required)) - cast(*void)(*instance)) == 18, "subsystem_rom_info.required has unexpected offset % instead of 18", ((cast(*void)(*instance.required)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_rom_info.required)) == 1, "subsystem_rom_info.required has unexpected size % instead of 1", size_of(type_of(subsystem_rom_info.required)));
        assert(((cast(*void)(*instance.memory)) - cast(*void)(*instance)) == 24, "subsystem_rom_info.memory has unexpected offset % instead of 24", ((cast(*void)(*instance.memory)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_rom_info.memory)) == 8, "subsystem_rom_info.memory has unexpected size % instead of 8", size_of(type_of(subsystem_rom_info.memory)));
        assert(((cast(*void)(*instance.num_memory)) - cast(*void)(*instance)) == 32, "subsystem_rom_info.num_memory has unexpected offset % instead of 32", ((cast(*void)(*instance.num_memory)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_rom_info.num_memory)) == 4, "subsystem_rom_info.num_memory has unexpected size % instead of 4", size_of(type_of(subsystem_rom_info.num_memory)));
        assert(size_of(subsystem_rom_info) == 40, "subsystem_rom_info has size % instead of 40", size_of(subsystem_rom_info));
    }

    {
        instance: subsystem_info;
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 0, "subsystem_info.desc has unexpected offset % instead of 0", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_info.desc)) == 8, "subsystem_info.desc has unexpected size % instead of 8", size_of(type_of(subsystem_info.desc)));
        assert(((cast(*void)(*instance.ident)) - cast(*void)(*instance)) == 8, "subsystem_info.ident has unexpected offset % instead of 8", ((cast(*void)(*instance.ident)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_info.ident)) == 8, "subsystem_info.ident has unexpected size % instead of 8", size_of(type_of(subsystem_info.ident)));
        assert(((cast(*void)(*instance.roms)) - cast(*void)(*instance)) == 16, "subsystem_info.roms has unexpected offset % instead of 16", ((cast(*void)(*instance.roms)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_info.roms)) == 8, "subsystem_info.roms has unexpected size % instead of 8", size_of(type_of(subsystem_info.roms)));
        assert(((cast(*void)(*instance.num_roms)) - cast(*void)(*instance)) == 24, "subsystem_info.num_roms has unexpected offset % instead of 24", ((cast(*void)(*instance.num_roms)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_info.num_roms)) == 4, "subsystem_info.num_roms has unexpected size % instead of 4", size_of(type_of(subsystem_info.num_roms)));
        assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 28, "subsystem_info.id has unexpected offset % instead of 28", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
        assert(size_of(type_of(subsystem_info.id)) == 4, "subsystem_info.id has unexpected size % instead of 4", size_of(type_of(subsystem_info.id)));
        assert(size_of(subsystem_info) == 32, "subsystem_info has size % instead of 32", size_of(subsystem_info));
    }

    {
        instance: get_proc_address_interface;
        assert(((cast(*void)(*instance.get_proc_address)) - cast(*void)(*instance)) == 0, "get_proc_address_interface.get_proc_address has unexpected offset % instead of 0", ((cast(*void)(*instance.get_proc_address)) - cast(*void)(*instance)));
        assert(size_of(type_of(get_proc_address_interface.get_proc_address)) == 8, "get_proc_address_interface.get_proc_address has unexpected size % instead of 8", size_of(type_of(get_proc_address_interface.get_proc_address)));
        assert(size_of(get_proc_address_interface) == 8, "get_proc_address_interface has size % instead of 8", size_of(get_proc_address_interface));
    }

    {
        instance: log_callback;
        assert(((cast(*void)(*instance.log)) - cast(*void)(*instance)) == 0, "log_callback.log has unexpected offset % instead of 0", ((cast(*void)(*instance.log)) - cast(*void)(*instance)));
        assert(size_of(type_of(log_callback.log)) == 8, "log_callback.log has unexpected size % instead of 8", size_of(type_of(log_callback.log)));
        assert(size_of(log_callback) == 8, "log_callback has size % instead of 8", size_of(log_callback));
    }

    {
        instance: perf_counter;
        assert(((cast(*void)(*instance.ident)) - cast(*void)(*instance)) == 0, "perf_counter.ident has unexpected offset % instead of 0", ((cast(*void)(*instance.ident)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_counter.ident)) == 8, "perf_counter.ident has unexpected size % instead of 8", size_of(type_of(perf_counter.ident)));
        assert(((cast(*void)(*instance.start)) - cast(*void)(*instance)) == 8, "perf_counter.start has unexpected offset % instead of 8", ((cast(*void)(*instance.start)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_counter.start)) == 8, "perf_counter.start has unexpected size % instead of 8", size_of(type_of(perf_counter.start)));
        assert(((cast(*void)(*instance.total)) - cast(*void)(*instance)) == 16, "perf_counter.total has unexpected offset % instead of 16", ((cast(*void)(*instance.total)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_counter.total)) == 8, "perf_counter.total has unexpected size % instead of 8", size_of(type_of(perf_counter.total)));
        assert(((cast(*void)(*instance.call_cnt)) - cast(*void)(*instance)) == 24, "perf_counter.call_cnt has unexpected offset % instead of 24", ((cast(*void)(*instance.call_cnt)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_counter.call_cnt)) == 8, "perf_counter.call_cnt has unexpected size % instead of 8", size_of(type_of(perf_counter.call_cnt)));
        assert(((cast(*void)(*instance.registered)) - cast(*void)(*instance)) == 32, "perf_counter.registered has unexpected offset % instead of 32", ((cast(*void)(*instance.registered)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_counter.registered)) == 1, "perf_counter.registered has unexpected size % instead of 1", size_of(type_of(perf_counter.registered)));
        assert(size_of(perf_counter) == 40, "perf_counter has size % instead of 40", size_of(perf_counter));
    }

    {
        instance: perf_callback;
        assert(((cast(*void)(*instance.get_time_usec)) - cast(*void)(*instance)) == 0, "perf_callback.get_time_usec has unexpected offset % instead of 0", ((cast(*void)(*instance.get_time_usec)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_callback.get_time_usec)) == 8, "perf_callback.get_time_usec has unexpected size % instead of 8", size_of(type_of(perf_callback.get_time_usec)));
        assert(((cast(*void)(*instance.get_cpu_features)) - cast(*void)(*instance)) == 8, "perf_callback.get_cpu_features has unexpected offset % instead of 8", ((cast(*void)(*instance.get_cpu_features)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_callback.get_cpu_features)) == 8, "perf_callback.get_cpu_features has unexpected size % instead of 8", size_of(type_of(perf_callback.get_cpu_features)));
        assert(((cast(*void)(*instance.get_perf_counter)) - cast(*void)(*instance)) == 16, "perf_callback.get_perf_counter has unexpected offset % instead of 16", ((cast(*void)(*instance.get_perf_counter)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_callback.get_perf_counter)) == 8, "perf_callback.get_perf_counter has unexpected size % instead of 8", size_of(type_of(perf_callback.get_perf_counter)));
        assert(((cast(*void)(*instance.perf_register)) - cast(*void)(*instance)) == 24, "perf_callback.perf_register has unexpected offset % instead of 24", ((cast(*void)(*instance.perf_register)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_callback.perf_register)) == 8, "perf_callback.perf_register has unexpected size % instead of 8", size_of(type_of(perf_callback.perf_register)));
        assert(((cast(*void)(*instance.perf_start)) - cast(*void)(*instance)) == 32, "perf_callback.perf_start has unexpected offset % instead of 32", ((cast(*void)(*instance.perf_start)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_callback.perf_start)) == 8, "perf_callback.perf_start has unexpected size % instead of 8", size_of(type_of(perf_callback.perf_start)));
        assert(((cast(*void)(*instance.perf_stop)) - cast(*void)(*instance)) == 40, "perf_callback.perf_stop has unexpected offset % instead of 40", ((cast(*void)(*instance.perf_stop)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_callback.perf_stop)) == 8, "perf_callback.perf_stop has unexpected size % instead of 8", size_of(type_of(perf_callback.perf_stop)));
        assert(((cast(*void)(*instance.perf_log)) - cast(*void)(*instance)) == 48, "perf_callback.perf_log has unexpected offset % instead of 48", ((cast(*void)(*instance.perf_log)) - cast(*void)(*instance)));
        assert(size_of(type_of(perf_callback.perf_log)) == 8, "perf_callback.perf_log has unexpected size % instead of 8", size_of(type_of(perf_callback.perf_log)));
        assert(size_of(perf_callback) == 56, "perf_callback has size % instead of 56", size_of(perf_callback));
    }

    {
        instance: sensor_interface;
        assert(((cast(*void)(*instance.set_sensor_state)) - cast(*void)(*instance)) == 0, "sensor_interface.set_sensor_state has unexpected offset % instead of 0", ((cast(*void)(*instance.set_sensor_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(sensor_interface.set_sensor_state)) == 8, "sensor_interface.set_sensor_state has unexpected size % instead of 8", size_of(type_of(sensor_interface.set_sensor_state)));
        assert(((cast(*void)(*instance.get_sensor_input)) - cast(*void)(*instance)) == 8, "sensor_interface.get_sensor_input has unexpected offset % instead of 8", ((cast(*void)(*instance.get_sensor_input)) - cast(*void)(*instance)));
        assert(size_of(type_of(sensor_interface.get_sensor_input)) == 8, "sensor_interface.get_sensor_input has unexpected size % instead of 8", size_of(type_of(sensor_interface.get_sensor_input)));
        assert(size_of(sensor_interface) == 16, "sensor_interface has size % instead of 16", size_of(sensor_interface));
    }

    {
        instance: camera_callback;
        assert(((cast(*void)(*instance.caps)) - cast(*void)(*instance)) == 0, "camera_callback.caps has unexpected offset % instead of 0", ((cast(*void)(*instance.caps)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.caps)) == 8, "camera_callback.caps has unexpected size % instead of 8", size_of(type_of(camera_callback.caps)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 8, "camera_callback.width has unexpected offset % instead of 8", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.width)) == 4, "camera_callback.width has unexpected size % instead of 4", size_of(type_of(camera_callback.width)));
        assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 12, "camera_callback.height has unexpected offset % instead of 12", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.height)) == 4, "camera_callback.height has unexpected size % instead of 4", size_of(type_of(camera_callback.height)));
        assert(((cast(*void)(*instance.start)) - cast(*void)(*instance)) == 16, "camera_callback.start has unexpected offset % instead of 16", ((cast(*void)(*instance.start)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.start)) == 8, "camera_callback.start has unexpected size % instead of 8", size_of(type_of(camera_callback.start)));
        assert(((cast(*void)(*instance.stop)) - cast(*void)(*instance)) == 24, "camera_callback.stop has unexpected offset % instead of 24", ((cast(*void)(*instance.stop)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.stop)) == 8, "camera_callback.stop has unexpected size % instead of 8", size_of(type_of(camera_callback.stop)));
        assert(((cast(*void)(*instance.frame_raw_framebuffer)) - cast(*void)(*instance)) == 32, "camera_callback.frame_raw_framebuffer has unexpected offset % instead of 32", ((cast(*void)(*instance.frame_raw_framebuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.frame_raw_framebuffer)) == 8, "camera_callback.frame_raw_framebuffer has unexpected size % instead of 8", size_of(type_of(camera_callback.frame_raw_framebuffer)));
        assert(((cast(*void)(*instance.frame_opengl_texture)) - cast(*void)(*instance)) == 40, "camera_callback.frame_opengl_texture has unexpected offset % instead of 40", ((cast(*void)(*instance.frame_opengl_texture)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.frame_opengl_texture)) == 8, "camera_callback.frame_opengl_texture has unexpected size % instead of 8", size_of(type_of(camera_callback.frame_opengl_texture)));
        assert(((cast(*void)(*instance.initialized)) - cast(*void)(*instance)) == 48, "camera_callback.initialized has unexpected offset % instead of 48", ((cast(*void)(*instance.initialized)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.initialized)) == 8, "camera_callback.initialized has unexpected size % instead of 8", size_of(type_of(camera_callback.initialized)));
        assert(((cast(*void)(*instance.deinitialized)) - cast(*void)(*instance)) == 56, "camera_callback.deinitialized has unexpected offset % instead of 56", ((cast(*void)(*instance.deinitialized)) - cast(*void)(*instance)));
        assert(size_of(type_of(camera_callback.deinitialized)) == 8, "camera_callback.deinitialized has unexpected size % instead of 8", size_of(type_of(camera_callback.deinitialized)));
        assert(size_of(camera_callback) == 64, "camera_callback has size % instead of 64", size_of(camera_callback));
    }

    {
        instance: location_callback;
        assert(((cast(*void)(*instance.start)) - cast(*void)(*instance)) == 0, "location_callback.start has unexpected offset % instead of 0", ((cast(*void)(*instance.start)) - cast(*void)(*instance)));
        assert(size_of(type_of(location_callback.start)) == 8, "location_callback.start has unexpected size % instead of 8", size_of(type_of(location_callback.start)));
        assert(((cast(*void)(*instance.stop)) - cast(*void)(*instance)) == 8, "location_callback.stop has unexpected offset % instead of 8", ((cast(*void)(*instance.stop)) - cast(*void)(*instance)));
        assert(size_of(type_of(location_callback.stop)) == 8, "location_callback.stop has unexpected size % instead of 8", size_of(type_of(location_callback.stop)));
        assert(((cast(*void)(*instance.get_position)) - cast(*void)(*instance)) == 16, "location_callback.get_position has unexpected offset % instead of 16", ((cast(*void)(*instance.get_position)) - cast(*void)(*instance)));
        assert(size_of(type_of(location_callback.get_position)) == 8, "location_callback.get_position has unexpected size % instead of 8", size_of(type_of(location_callback.get_position)));
        assert(((cast(*void)(*instance.set_interval)) - cast(*void)(*instance)) == 24, "location_callback.set_interval has unexpected offset % instead of 24", ((cast(*void)(*instance.set_interval)) - cast(*void)(*instance)));
        assert(size_of(type_of(location_callback.set_interval)) == 8, "location_callback.set_interval has unexpected size % instead of 8", size_of(type_of(location_callback.set_interval)));
        assert(((cast(*void)(*instance.initialized)) - cast(*void)(*instance)) == 32, "location_callback.initialized has unexpected offset % instead of 32", ((cast(*void)(*instance.initialized)) - cast(*void)(*instance)));
        assert(size_of(type_of(location_callback.initialized)) == 8, "location_callback.initialized has unexpected size % instead of 8", size_of(type_of(location_callback.initialized)));
        assert(((cast(*void)(*instance.deinitialized)) - cast(*void)(*instance)) == 40, "location_callback.deinitialized has unexpected offset % instead of 40", ((cast(*void)(*instance.deinitialized)) - cast(*void)(*instance)));
        assert(size_of(type_of(location_callback.deinitialized)) == 8, "location_callback.deinitialized has unexpected size % instead of 8", size_of(type_of(location_callback.deinitialized)));
        assert(size_of(location_callback) == 48, "location_callback has size % instead of 48", size_of(location_callback));
    }

    {
        instance: rumble_interface;
        assert(((cast(*void)(*instance.set_rumble_state)) - cast(*void)(*instance)) == 0, "rumble_interface.set_rumble_state has unexpected offset % instead of 0", ((cast(*void)(*instance.set_rumble_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(rumble_interface.set_rumble_state)) == 8, "rumble_interface.set_rumble_state has unexpected size % instead of 8", size_of(type_of(rumble_interface.set_rumble_state)));
        assert(size_of(rumble_interface) == 8, "rumble_interface has size % instead of 8", size_of(rumble_interface));
    }

    {
        instance: audio_callback;
        assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 0, "audio_callback.callback has unexpected offset % instead of 0", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
        assert(size_of(type_of(audio_callback.callback)) == 8, "audio_callback.callback has unexpected size % instead of 8", size_of(type_of(audio_callback.callback)));
        assert(((cast(*void)(*instance.set_state)) - cast(*void)(*instance)) == 8, "audio_callback.set_state has unexpected offset % instead of 8", ((cast(*void)(*instance.set_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(audio_callback.set_state)) == 8, "audio_callback.set_state has unexpected size % instead of 8", size_of(type_of(audio_callback.set_state)));
        assert(size_of(audio_callback) == 16, "audio_callback has size % instead of 16", size_of(audio_callback));
    }

    {
        instance: frame_time_callback;
        assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 0, "frame_time_callback.callback has unexpected offset % instead of 0", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
        assert(size_of(type_of(frame_time_callback.callback)) == 8, "frame_time_callback.callback has unexpected size % instead of 8", size_of(type_of(frame_time_callback.callback)));
        assert(((cast(*void)(*instance.reference)) - cast(*void)(*instance)) == 8, "frame_time_callback.reference has unexpected offset % instead of 8", ((cast(*void)(*instance.reference)) - cast(*void)(*instance)));
        assert(size_of(type_of(frame_time_callback.reference)) == 8, "frame_time_callback.reference has unexpected size % instead of 8", size_of(type_of(frame_time_callback.reference)));
        assert(size_of(frame_time_callback) == 16, "frame_time_callback has size % instead of 16", size_of(frame_time_callback));
    }

    {
        instance: audio_buffer_status_callback;
        assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 0, "audio_buffer_status_callback.callback has unexpected offset % instead of 0", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
        assert(size_of(type_of(audio_buffer_status_callback.callback)) == 8, "audio_buffer_status_callback.callback has unexpected size % instead of 8", size_of(type_of(audio_buffer_status_callback.callback)));
        assert(size_of(audio_buffer_status_callback) == 8, "audio_buffer_status_callback has size % instead of 8", size_of(audio_buffer_status_callback));
    }

    {
        instance: hw_render_callback;
        assert(((cast(*void)(*instance.context_type)) - cast(*void)(*instance)) == 0, "hw_render_callback.context_type has unexpected offset % instead of 0", ((cast(*void)(*instance.context_type)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.context_type)) == 4, "hw_render_callback.context_type has unexpected size % instead of 4", size_of(type_of(hw_render_callback.context_type)));
        assert(((cast(*void)(*instance.context_reset)) - cast(*void)(*instance)) == 8, "hw_render_callback.context_reset has unexpected offset % instead of 8", ((cast(*void)(*instance.context_reset)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.context_reset)) == 8, "hw_render_callback.context_reset has unexpected size % instead of 8", size_of(type_of(hw_render_callback.context_reset)));
        assert(((cast(*void)(*instance.get_current_framebuffer)) - cast(*void)(*instance)) == 16, "hw_render_callback.get_current_framebuffer has unexpected offset % instead of 16", ((cast(*void)(*instance.get_current_framebuffer)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.get_current_framebuffer)) == 8, "hw_render_callback.get_current_framebuffer has unexpected size % instead of 8", size_of(type_of(hw_render_callback.get_current_framebuffer)));
        assert(((cast(*void)(*instance.get_proc_address)) - cast(*void)(*instance)) == 24, "hw_render_callback.get_proc_address has unexpected offset % instead of 24", ((cast(*void)(*instance.get_proc_address)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.get_proc_address)) == 8, "hw_render_callback.get_proc_address has unexpected size % instead of 8", size_of(type_of(hw_render_callback.get_proc_address)));
        assert(((cast(*void)(*instance.depth)) - cast(*void)(*instance)) == 32, "hw_render_callback.depth has unexpected offset % instead of 32", ((cast(*void)(*instance.depth)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.depth)) == 1, "hw_render_callback.depth has unexpected size % instead of 1", size_of(type_of(hw_render_callback.depth)));
        assert(((cast(*void)(*instance.stencil)) - cast(*void)(*instance)) == 33, "hw_render_callback.stencil has unexpected offset % instead of 33", ((cast(*void)(*instance.stencil)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.stencil)) == 1, "hw_render_callback.stencil has unexpected size % instead of 1", size_of(type_of(hw_render_callback.stencil)));
        assert(((cast(*void)(*instance.bottom_left_origin)) - cast(*void)(*instance)) == 34, "hw_render_callback.bottom_left_origin has unexpected offset % instead of 34", ((cast(*void)(*instance.bottom_left_origin)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.bottom_left_origin)) == 1, "hw_render_callback.bottom_left_origin has unexpected size % instead of 1", size_of(type_of(hw_render_callback.bottom_left_origin)));
        assert(((cast(*void)(*instance.version_major)) - cast(*void)(*instance)) == 36, "hw_render_callback.version_major has unexpected offset % instead of 36", ((cast(*void)(*instance.version_major)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.version_major)) == 4, "hw_render_callback.version_major has unexpected size % instead of 4", size_of(type_of(hw_render_callback.version_major)));
        assert(((cast(*void)(*instance.version_minor)) - cast(*void)(*instance)) == 40, "hw_render_callback.version_minor has unexpected offset % instead of 40", ((cast(*void)(*instance.version_minor)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.version_minor)) == 4, "hw_render_callback.version_minor has unexpected size % instead of 4", size_of(type_of(hw_render_callback.version_minor)));
        assert(((cast(*void)(*instance.cache_context)) - cast(*void)(*instance)) == 44, "hw_render_callback.cache_context has unexpected offset % instead of 44", ((cast(*void)(*instance.cache_context)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.cache_context)) == 1, "hw_render_callback.cache_context has unexpected size % instead of 1", size_of(type_of(hw_render_callback.cache_context)));
        assert(((cast(*void)(*instance.context_destroy)) - cast(*void)(*instance)) == 48, "hw_render_callback.context_destroy has unexpected offset % instead of 48", ((cast(*void)(*instance.context_destroy)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.context_destroy)) == 8, "hw_render_callback.context_destroy has unexpected size % instead of 8", size_of(type_of(hw_render_callback.context_destroy)));
        assert(((cast(*void)(*instance.debug_context)) - cast(*void)(*instance)) == 56, "hw_render_callback.debug_context has unexpected offset % instead of 56", ((cast(*void)(*instance.debug_context)) - cast(*void)(*instance)));
        assert(size_of(type_of(hw_render_callback.debug_context)) == 1, "hw_render_callback.debug_context has unexpected size % instead of 1", size_of(type_of(hw_render_callback.debug_context)));
        assert(size_of(hw_render_callback) == 64, "hw_render_callback has size % instead of 64", size_of(hw_render_callback));
    }

    {
        instance: keyboard_callback;
        assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 0, "keyboard_callback.callback has unexpected offset % instead of 0", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
        assert(size_of(type_of(keyboard_callback.callback)) == 8, "keyboard_callback.callback has unexpected size % instead of 8", size_of(type_of(keyboard_callback.callback)));
        assert(size_of(keyboard_callback) == 8, "keyboard_callback has size % instead of 8", size_of(keyboard_callback));
    }

    {
        instance: disk_control_callback;
        assert(((cast(*void)(*instance.set_eject_state)) - cast(*void)(*instance)) == 0, "disk_control_callback.set_eject_state has unexpected offset % instead of 0", ((cast(*void)(*instance.set_eject_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_callback.set_eject_state)) == 8, "disk_control_callback.set_eject_state has unexpected size % instead of 8", size_of(type_of(disk_control_callback.set_eject_state)));
        assert(((cast(*void)(*instance.get_eject_state)) - cast(*void)(*instance)) == 8, "disk_control_callback.get_eject_state has unexpected offset % instead of 8", ((cast(*void)(*instance.get_eject_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_callback.get_eject_state)) == 8, "disk_control_callback.get_eject_state has unexpected size % instead of 8", size_of(type_of(disk_control_callback.get_eject_state)));
        assert(((cast(*void)(*instance.get_image_index)) - cast(*void)(*instance)) == 16, "disk_control_callback.get_image_index has unexpected offset % instead of 16", ((cast(*void)(*instance.get_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_callback.get_image_index)) == 8, "disk_control_callback.get_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_callback.get_image_index)));
        assert(((cast(*void)(*instance.set_image_index)) - cast(*void)(*instance)) == 24, "disk_control_callback.set_image_index has unexpected offset % instead of 24", ((cast(*void)(*instance.set_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_callback.set_image_index)) == 8, "disk_control_callback.set_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_callback.set_image_index)));
        assert(((cast(*void)(*instance.get_num_images)) - cast(*void)(*instance)) == 32, "disk_control_callback.get_num_images has unexpected offset % instead of 32", ((cast(*void)(*instance.get_num_images)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_callback.get_num_images)) == 8, "disk_control_callback.get_num_images has unexpected size % instead of 8", size_of(type_of(disk_control_callback.get_num_images)));
        assert(((cast(*void)(*instance.replace_image_index)) - cast(*void)(*instance)) == 40, "disk_control_callback.replace_image_index has unexpected offset % instead of 40", ((cast(*void)(*instance.replace_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_callback.replace_image_index)) == 8, "disk_control_callback.replace_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_callback.replace_image_index)));
        assert(((cast(*void)(*instance.add_image_index)) - cast(*void)(*instance)) == 48, "disk_control_callback.add_image_index has unexpected offset % instead of 48", ((cast(*void)(*instance.add_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_callback.add_image_index)) == 8, "disk_control_callback.add_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_callback.add_image_index)));
        assert(size_of(disk_control_callback) == 56, "disk_control_callback has size % instead of 56", size_of(disk_control_callback));
    }

    {
        instance: disk_control_ext_callback;
        assert(((cast(*void)(*instance.set_eject_state)) - cast(*void)(*instance)) == 0, "disk_control_ext_callback.set_eject_state has unexpected offset % instead of 0", ((cast(*void)(*instance.set_eject_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.set_eject_state)) == 8, "disk_control_ext_callback.set_eject_state has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.set_eject_state)));
        assert(((cast(*void)(*instance.get_eject_state)) - cast(*void)(*instance)) == 8, "disk_control_ext_callback.get_eject_state has unexpected offset % instead of 8", ((cast(*void)(*instance.get_eject_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.get_eject_state)) == 8, "disk_control_ext_callback.get_eject_state has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.get_eject_state)));
        assert(((cast(*void)(*instance.get_image_index)) - cast(*void)(*instance)) == 16, "disk_control_ext_callback.get_image_index has unexpected offset % instead of 16", ((cast(*void)(*instance.get_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.get_image_index)) == 8, "disk_control_ext_callback.get_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.get_image_index)));
        assert(((cast(*void)(*instance.set_image_index)) - cast(*void)(*instance)) == 24, "disk_control_ext_callback.set_image_index has unexpected offset % instead of 24", ((cast(*void)(*instance.set_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.set_image_index)) == 8, "disk_control_ext_callback.set_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.set_image_index)));
        assert(((cast(*void)(*instance.get_num_images)) - cast(*void)(*instance)) == 32, "disk_control_ext_callback.get_num_images has unexpected offset % instead of 32", ((cast(*void)(*instance.get_num_images)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.get_num_images)) == 8, "disk_control_ext_callback.get_num_images has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.get_num_images)));
        assert(((cast(*void)(*instance.replace_image_index)) - cast(*void)(*instance)) == 40, "disk_control_ext_callback.replace_image_index has unexpected offset % instead of 40", ((cast(*void)(*instance.replace_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.replace_image_index)) == 8, "disk_control_ext_callback.replace_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.replace_image_index)));
        assert(((cast(*void)(*instance.add_image_index)) - cast(*void)(*instance)) == 48, "disk_control_ext_callback.add_image_index has unexpected offset % instead of 48", ((cast(*void)(*instance.add_image_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.add_image_index)) == 8, "disk_control_ext_callback.add_image_index has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.add_image_index)));
        assert(((cast(*void)(*instance.set_initial_image)) - cast(*void)(*instance)) == 56, "disk_control_ext_callback.set_initial_image has unexpected offset % instead of 56", ((cast(*void)(*instance.set_initial_image)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.set_initial_image)) == 8, "disk_control_ext_callback.set_initial_image has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.set_initial_image)));
        assert(((cast(*void)(*instance.get_image_path)) - cast(*void)(*instance)) == 64, "disk_control_ext_callback.get_image_path has unexpected offset % instead of 64", ((cast(*void)(*instance.get_image_path)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.get_image_path)) == 8, "disk_control_ext_callback.get_image_path has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.get_image_path)));
        assert(((cast(*void)(*instance.get_image_label)) - cast(*void)(*instance)) == 72, "disk_control_ext_callback.get_image_label has unexpected offset % instead of 72", ((cast(*void)(*instance.get_image_label)) - cast(*void)(*instance)));
        assert(size_of(type_of(disk_control_ext_callback.get_image_label)) == 8, "disk_control_ext_callback.get_image_label has unexpected size % instead of 8", size_of(type_of(disk_control_ext_callback.get_image_label)));
        assert(size_of(disk_control_ext_callback) == 80, "disk_control_ext_callback has size % instead of 80", size_of(disk_control_ext_callback));
    }

    {
        instance: netpacket_callback;
        assert(((cast(*void)(*instance.start)) - cast(*void)(*instance)) == 0, "netpacket_callback.start has unexpected offset % instead of 0", ((cast(*void)(*instance.start)) - cast(*void)(*instance)));
        assert(size_of(type_of(netpacket_callback.start)) == 8, "netpacket_callback.start has unexpected size % instead of 8", size_of(type_of(netpacket_callback.start)));
        assert(((cast(*void)(*instance.receive)) - cast(*void)(*instance)) == 8, "netpacket_callback.receive has unexpected offset % instead of 8", ((cast(*void)(*instance.receive)) - cast(*void)(*instance)));
        assert(size_of(type_of(netpacket_callback.receive)) == 8, "netpacket_callback.receive has unexpected size % instead of 8", size_of(type_of(netpacket_callback.receive)));
        assert(((cast(*void)(*instance.stop)) - cast(*void)(*instance)) == 16, "netpacket_callback.stop has unexpected offset % instead of 16", ((cast(*void)(*instance.stop)) - cast(*void)(*instance)));
        assert(size_of(type_of(netpacket_callback.stop)) == 8, "netpacket_callback.stop has unexpected size % instead of 8", size_of(type_of(netpacket_callback.stop)));
        assert(((cast(*void)(*instance.poll)) - cast(*void)(*instance)) == 24, "netpacket_callback.poll has unexpected offset % instead of 24", ((cast(*void)(*instance.poll)) - cast(*void)(*instance)));
        assert(size_of(type_of(netpacket_callback.poll)) == 8, "netpacket_callback.poll has unexpected size % instead of 8", size_of(type_of(netpacket_callback.poll)));
        assert(((cast(*void)(*instance.connected)) - cast(*void)(*instance)) == 32, "netpacket_callback.connected has unexpected offset % instead of 32", ((cast(*void)(*instance.connected)) - cast(*void)(*instance)));
        assert(size_of(type_of(netpacket_callback.connected)) == 8, "netpacket_callback.connected has unexpected size % instead of 8", size_of(type_of(netpacket_callback.connected)));
        assert(((cast(*void)(*instance.disconnected)) - cast(*void)(*instance)) == 40, "netpacket_callback.disconnected has unexpected offset % instead of 40", ((cast(*void)(*instance.disconnected)) - cast(*void)(*instance)));
        assert(size_of(type_of(netpacket_callback.disconnected)) == 8, "netpacket_callback.disconnected has unexpected size % instead of 8", size_of(type_of(netpacket_callback.disconnected)));
        assert(((cast(*void)(*instance.protocol_version)) - cast(*void)(*instance)) == 48, "netpacket_callback.protocol_version has unexpected offset % instead of 48", ((cast(*void)(*instance.protocol_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(netpacket_callback.protocol_version)) == 8, "netpacket_callback.protocol_version has unexpected size % instead of 8", size_of(type_of(netpacket_callback.protocol_version)));
        assert(size_of(netpacket_callback) == 56, "netpacket_callback has size % instead of 56", size_of(netpacket_callback));
    }

    {
        instance: message;
        assert(((cast(*void)(*instance.msg)) - cast(*void)(*instance)) == 0, "message.msg has unexpected offset % instead of 0", ((cast(*void)(*instance.msg)) - cast(*void)(*instance)));
        assert(size_of(type_of(message.msg)) == 8, "message.msg has unexpected size % instead of 8", size_of(type_of(message.msg)));
        assert(((cast(*void)(*instance.frames)) - cast(*void)(*instance)) == 8, "message.frames has unexpected offset % instead of 8", ((cast(*void)(*instance.frames)) - cast(*void)(*instance)));
        assert(size_of(type_of(message.frames)) == 4, "message.frames has unexpected size % instead of 4", size_of(type_of(message.frames)));
        assert(size_of(message) == 16, "message has size % instead of 16", size_of(message));
    }

    {
        instance: message_ext;
        assert(((cast(*void)(*instance.msg)) - cast(*void)(*instance)) == 0, "message_ext.msg has unexpected offset % instead of 0", ((cast(*void)(*instance.msg)) - cast(*void)(*instance)));
        assert(size_of(type_of(message_ext.msg)) == 8, "message_ext.msg has unexpected size % instead of 8", size_of(type_of(message_ext.msg)));
        assert(((cast(*void)(*instance.duration)) - cast(*void)(*instance)) == 8, "message_ext.duration has unexpected offset % instead of 8", ((cast(*void)(*instance.duration)) - cast(*void)(*instance)));
        assert(size_of(type_of(message_ext.duration)) == 4, "message_ext.duration has unexpected size % instead of 4", size_of(type_of(message_ext.duration)));
        assert(((cast(*void)(*instance.priority)) - cast(*void)(*instance)) == 12, "message_ext.priority has unexpected offset % instead of 12", ((cast(*void)(*instance.priority)) - cast(*void)(*instance)));
        assert(size_of(type_of(message_ext.priority)) == 4, "message_ext.priority has unexpected size % instead of 4", size_of(type_of(message_ext.priority)));
        assert(((cast(*void)(*instance.level)) - cast(*void)(*instance)) == 16, "message_ext.level has unexpected offset % instead of 16", ((cast(*void)(*instance.level)) - cast(*void)(*instance)));
        assert(size_of(type_of(message_ext.level)) == 4, "message_ext.level has unexpected size % instead of 4", size_of(type_of(message_ext.level)));
        assert(((cast(*void)(*instance.target)) - cast(*void)(*instance)) == 20, "message_ext.target has unexpected offset % instead of 20", ((cast(*void)(*instance.target)) - cast(*void)(*instance)));
        assert(size_of(type_of(message_ext.target)) == 4, "message_ext.target has unexpected size % instead of 4", size_of(type_of(message_ext.target)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 24, "message_ext.type has unexpected offset % instead of 24", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(message_ext.type)) == 4, "message_ext.type has unexpected size % instead of 4", size_of(type_of(message_ext.type)));
        assert(((cast(*void)(*instance.progress)) - cast(*void)(*instance)) == 28, "message_ext.progress has unexpected offset % instead of 28", ((cast(*void)(*instance.progress)) - cast(*void)(*instance)));
        assert(size_of(type_of(message_ext.progress)) == 1, "message_ext.progress has unexpected size % instead of 1", size_of(type_of(message_ext.progress)));
        assert(size_of(message_ext) == 32, "message_ext has size % instead of 32", size_of(message_ext));
    }

    {
        instance: input_descriptor;
        assert(((cast(*void)(*instance.port)) - cast(*void)(*instance)) == 0, "input_descriptor.port has unexpected offset % instead of 0", ((cast(*void)(*instance.port)) - cast(*void)(*instance)));
        assert(size_of(type_of(input_descriptor.port)) == 4, "input_descriptor.port has unexpected size % instead of 4", size_of(type_of(input_descriptor.port)));
        assert(((cast(*void)(*instance.device)) - cast(*void)(*instance)) == 4, "input_descriptor.device has unexpected offset % instead of 4", ((cast(*void)(*instance.device)) - cast(*void)(*instance)));
        assert(size_of(type_of(input_descriptor.device)) == 4, "input_descriptor.device has unexpected size % instead of 4", size_of(type_of(input_descriptor.device)));
        assert(((cast(*void)(*instance.index)) - cast(*void)(*instance)) == 8, "input_descriptor.index has unexpected offset % instead of 8", ((cast(*void)(*instance.index)) - cast(*void)(*instance)));
        assert(size_of(type_of(input_descriptor.index)) == 4, "input_descriptor.index has unexpected size % instead of 4", size_of(type_of(input_descriptor.index)));
        assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 12, "input_descriptor.id has unexpected offset % instead of 12", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
        assert(size_of(type_of(input_descriptor.id)) == 4, "input_descriptor.id has unexpected size % instead of 4", size_of(type_of(input_descriptor.id)));
        assert(((cast(*void)(*instance.description)) - cast(*void)(*instance)) == 16, "input_descriptor.description has unexpected offset % instead of 16", ((cast(*void)(*instance.description)) - cast(*void)(*instance)));
        assert(size_of(type_of(input_descriptor.description)) == 8, "input_descriptor.description has unexpected size % instead of 8", size_of(type_of(input_descriptor.description)));
        assert(size_of(input_descriptor) == 24, "input_descriptor has size % instead of 24", size_of(input_descriptor));
    }

    {
        instance: system_info;
        assert(((cast(*void)(*instance.library_name)) - cast(*void)(*instance)) == 0, "system_info.library_name has unexpected offset % instead of 0", ((cast(*void)(*instance.library_name)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_info.library_name)) == 8, "system_info.library_name has unexpected size % instead of 8", size_of(type_of(system_info.library_name)));
        assert(((cast(*void)(*instance.library_version)) - cast(*void)(*instance)) == 8, "system_info.library_version has unexpected offset % instead of 8", ((cast(*void)(*instance.library_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_info.library_version)) == 8, "system_info.library_version has unexpected size % instead of 8", size_of(type_of(system_info.library_version)));
        assert(((cast(*void)(*instance.valid_extensions)) - cast(*void)(*instance)) == 16, "system_info.valid_extensions has unexpected offset % instead of 16", ((cast(*void)(*instance.valid_extensions)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_info.valid_extensions)) == 8, "system_info.valid_extensions has unexpected size % instead of 8", size_of(type_of(system_info.valid_extensions)));
        assert(((cast(*void)(*instance.need_fullpath)) - cast(*void)(*instance)) == 24, "system_info.need_fullpath has unexpected offset % instead of 24", ((cast(*void)(*instance.need_fullpath)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_info.need_fullpath)) == 1, "system_info.need_fullpath has unexpected size % instead of 1", size_of(type_of(system_info.need_fullpath)));
        assert(((cast(*void)(*instance.block_extract)) - cast(*void)(*instance)) == 25, "system_info.block_extract has unexpected offset % instead of 25", ((cast(*void)(*instance.block_extract)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_info.block_extract)) == 1, "system_info.block_extract has unexpected size % instead of 1", size_of(type_of(system_info.block_extract)));
        assert(size_of(system_info) == 32, "system_info has size % instead of 32", size_of(system_info));
    }

    {
        instance: system_content_info_override;
        assert(((cast(*void)(*instance.extensions)) - cast(*void)(*instance)) == 0, "system_content_info_override.extensions has unexpected offset % instead of 0", ((cast(*void)(*instance.extensions)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_content_info_override.extensions)) == 8, "system_content_info_override.extensions has unexpected size % instead of 8", size_of(type_of(system_content_info_override.extensions)));
        assert(((cast(*void)(*instance.need_fullpath)) - cast(*void)(*instance)) == 8, "system_content_info_override.need_fullpath has unexpected offset % instead of 8", ((cast(*void)(*instance.need_fullpath)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_content_info_override.need_fullpath)) == 1, "system_content_info_override.need_fullpath has unexpected size % instead of 1", size_of(type_of(system_content_info_override.need_fullpath)));
        assert(((cast(*void)(*instance.persistent_data)) - cast(*void)(*instance)) == 9, "system_content_info_override.persistent_data has unexpected offset % instead of 9", ((cast(*void)(*instance.persistent_data)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_content_info_override.persistent_data)) == 1, "system_content_info_override.persistent_data has unexpected size % instead of 1", size_of(type_of(system_content_info_override.persistent_data)));
        assert(size_of(system_content_info_override) == 16, "system_content_info_override has size % instead of 16", size_of(system_content_info_override));
    }

    {
        instance: game_info_ext;
        assert(((cast(*void)(*instance.full_path)) - cast(*void)(*instance)) == 0, "game_info_ext.full_path has unexpected offset % instead of 0", ((cast(*void)(*instance.full_path)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.full_path)) == 8, "game_info_ext.full_path has unexpected size % instead of 8", size_of(type_of(game_info_ext.full_path)));
        assert(((cast(*void)(*instance.archive_path)) - cast(*void)(*instance)) == 8, "game_info_ext.archive_path has unexpected offset % instead of 8", ((cast(*void)(*instance.archive_path)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.archive_path)) == 8, "game_info_ext.archive_path has unexpected size % instead of 8", size_of(type_of(game_info_ext.archive_path)));
        assert(((cast(*void)(*instance.archive_file)) - cast(*void)(*instance)) == 16, "game_info_ext.archive_file has unexpected offset % instead of 16", ((cast(*void)(*instance.archive_file)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.archive_file)) == 8, "game_info_ext.archive_file has unexpected size % instead of 8", size_of(type_of(game_info_ext.archive_file)));
        assert(((cast(*void)(*instance.dir)) - cast(*void)(*instance)) == 24, "game_info_ext.dir has unexpected offset % instead of 24", ((cast(*void)(*instance.dir)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.dir)) == 8, "game_info_ext.dir has unexpected size % instead of 8", size_of(type_of(game_info_ext.dir)));
        assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 32, "game_info_ext.name has unexpected offset % instead of 32", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.name)) == 8, "game_info_ext.name has unexpected size % instead of 8", size_of(type_of(game_info_ext.name)));
        assert(((cast(*void)(*instance.ext)) - cast(*void)(*instance)) == 40, "game_info_ext.ext has unexpected offset % instead of 40", ((cast(*void)(*instance.ext)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.ext)) == 8, "game_info_ext.ext has unexpected size % instead of 8", size_of(type_of(game_info_ext.ext)));
        assert(((cast(*void)(*instance.meta)) - cast(*void)(*instance)) == 48, "game_info_ext.meta has unexpected offset % instead of 48", ((cast(*void)(*instance.meta)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.meta)) == 8, "game_info_ext.meta has unexpected size % instead of 8", size_of(type_of(game_info_ext.meta)));
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 56, "game_info_ext.data has unexpected offset % instead of 56", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.data)) == 8, "game_info_ext.data has unexpected size % instead of 8", size_of(type_of(game_info_ext.data)));
        assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 64, "game_info_ext.size has unexpected offset % instead of 64", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.size)) == 8, "game_info_ext.size has unexpected size % instead of 8", size_of(type_of(game_info_ext.size)));
        assert(((cast(*void)(*instance.file_in_archive)) - cast(*void)(*instance)) == 72, "game_info_ext.file_in_archive has unexpected offset % instead of 72", ((cast(*void)(*instance.file_in_archive)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.file_in_archive)) == 1, "game_info_ext.file_in_archive has unexpected size % instead of 1", size_of(type_of(game_info_ext.file_in_archive)));
        assert(((cast(*void)(*instance.persistent_data)) - cast(*void)(*instance)) == 73, "game_info_ext.persistent_data has unexpected offset % instead of 73", ((cast(*void)(*instance.persistent_data)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info_ext.persistent_data)) == 1, "game_info_ext.persistent_data has unexpected size % instead of 1", size_of(type_of(game_info_ext.persistent_data)));
        assert(size_of(game_info_ext) == 80, "game_info_ext has size % instead of 80", size_of(game_info_ext));
    }

    {
        instance: game_geometry;
        assert(((cast(*void)(*instance.base_width)) - cast(*void)(*instance)) == 0, "game_geometry.base_width has unexpected offset % instead of 0", ((cast(*void)(*instance.base_width)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_geometry.base_width)) == 4, "game_geometry.base_width has unexpected size % instead of 4", size_of(type_of(game_geometry.base_width)));
        assert(((cast(*void)(*instance.base_height)) - cast(*void)(*instance)) == 4, "game_geometry.base_height has unexpected offset % instead of 4", ((cast(*void)(*instance.base_height)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_geometry.base_height)) == 4, "game_geometry.base_height has unexpected size % instead of 4", size_of(type_of(game_geometry.base_height)));
        assert(((cast(*void)(*instance.max_width)) - cast(*void)(*instance)) == 8, "game_geometry.max_width has unexpected offset % instead of 8", ((cast(*void)(*instance.max_width)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_geometry.max_width)) == 4, "game_geometry.max_width has unexpected size % instead of 4", size_of(type_of(game_geometry.max_width)));
        assert(((cast(*void)(*instance.max_height)) - cast(*void)(*instance)) == 12, "game_geometry.max_height has unexpected offset % instead of 12", ((cast(*void)(*instance.max_height)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_geometry.max_height)) == 4, "game_geometry.max_height has unexpected size % instead of 4", size_of(type_of(game_geometry.max_height)));
        assert(((cast(*void)(*instance.aspect_ratio)) - cast(*void)(*instance)) == 16, "game_geometry.aspect_ratio has unexpected offset % instead of 16", ((cast(*void)(*instance.aspect_ratio)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_geometry.aspect_ratio)) == 4, "game_geometry.aspect_ratio has unexpected size % instead of 4", size_of(type_of(game_geometry.aspect_ratio)));
        assert(size_of(game_geometry) == 20, "game_geometry has size % instead of 20", size_of(game_geometry));
    }

    {
        instance: system_timing;
        assert(((cast(*void)(*instance.fps)) - cast(*void)(*instance)) == 0, "system_timing.fps has unexpected offset % instead of 0", ((cast(*void)(*instance.fps)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_timing.fps)) == 8, "system_timing.fps has unexpected size % instead of 8", size_of(type_of(system_timing.fps)));
        assert(((cast(*void)(*instance.sample_rate)) - cast(*void)(*instance)) == 8, "system_timing.sample_rate has unexpected offset % instead of 8", ((cast(*void)(*instance.sample_rate)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_timing.sample_rate)) == 8, "system_timing.sample_rate has unexpected size % instead of 8", size_of(type_of(system_timing.sample_rate)));
        assert(size_of(system_timing) == 16, "system_timing has size % instead of 16", size_of(system_timing));
    }

    {
        instance: system_av_info;
        assert(((cast(*void)(*instance.geometry)) - cast(*void)(*instance)) == 0, "system_av_info.geometry has unexpected offset % instead of 0", ((cast(*void)(*instance.geometry)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_av_info.geometry)) == 20, "system_av_info.geometry has unexpected size % instead of 20", size_of(type_of(system_av_info.geometry)));
        assert(((cast(*void)(*instance.timing)) - cast(*void)(*instance)) == 24, "system_av_info.timing has unexpected offset % instead of 24", ((cast(*void)(*instance.timing)) - cast(*void)(*instance)));
        assert(size_of(type_of(system_av_info.timing)) == 16, "system_av_info.timing has unexpected size % instead of 16", size_of(type_of(system_av_info.timing)));
        assert(size_of(system_av_info) == 40, "system_av_info has size % instead of 40", size_of(system_av_info));
    }

    {
        instance: variable;
        assert(((cast(*void)(*instance.key)) - cast(*void)(*instance)) == 0, "variable.key has unexpected offset % instead of 0", ((cast(*void)(*instance.key)) - cast(*void)(*instance)));
        assert(size_of(type_of(variable.key)) == 8, "variable.key has unexpected size % instead of 8", size_of(type_of(variable.key)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 8, "variable.value has unexpected offset % instead of 8", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(variable.value)) == 8, "variable.value has unexpected size % instead of 8", size_of(type_of(variable.value)));
        assert(size_of(variable) == 16, "variable has size % instead of 16", size_of(variable));
    }

    {
        instance: core_option_display;
        assert(((cast(*void)(*instance.key)) - cast(*void)(*instance)) == 0, "core_option_display.key has unexpected offset % instead of 0", ((cast(*void)(*instance.key)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_display.key)) == 8, "core_option_display.key has unexpected size % instead of 8", size_of(type_of(core_option_display.key)));
        assert(((cast(*void)(*instance.visible)) - cast(*void)(*instance)) == 8, "core_option_display.visible has unexpected offset % instead of 8", ((cast(*void)(*instance.visible)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_display.visible)) == 1, "core_option_display.visible has unexpected size % instead of 1", size_of(type_of(core_option_display.visible)));
        assert(size_of(core_option_display) == 16, "core_option_display has size % instead of 16", size_of(core_option_display));
    }

    {
        instance: core_option_value;
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 0, "core_option_value.value has unexpected offset % instead of 0", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_value.value)) == 8, "core_option_value.value has unexpected size % instead of 8", size_of(type_of(core_option_value.value)));
        assert(((cast(*void)(*instance.label)) - cast(*void)(*instance)) == 8, "core_option_value.label has unexpected offset % instead of 8", ((cast(*void)(*instance.label)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_value.label)) == 8, "core_option_value.label has unexpected size % instead of 8", size_of(type_of(core_option_value.label)));
        assert(size_of(core_option_value) == 16, "core_option_value has size % instead of 16", size_of(core_option_value));
    }

    {
        instance: core_option_definition;
        assert(((cast(*void)(*instance.key)) - cast(*void)(*instance)) == 0, "core_option_definition.key has unexpected offset % instead of 0", ((cast(*void)(*instance.key)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_definition.key)) == 8, "core_option_definition.key has unexpected size % instead of 8", size_of(type_of(core_option_definition.key)));
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 8, "core_option_definition.desc has unexpected offset % instead of 8", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_definition.desc)) == 8, "core_option_definition.desc has unexpected size % instead of 8", size_of(type_of(core_option_definition.desc)));
        assert(((cast(*void)(*instance.info)) - cast(*void)(*instance)) == 16, "core_option_definition.info has unexpected offset % instead of 16", ((cast(*void)(*instance.info)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_definition.info)) == 8, "core_option_definition.info has unexpected size % instead of 8", size_of(type_of(core_option_definition.info)));
        assert(((cast(*void)(*instance.values)) - cast(*void)(*instance)) == 24, "core_option_definition.values has unexpected offset % instead of 24", ((cast(*void)(*instance.values)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_definition.values)) == 2048, "core_option_definition.values has unexpected size % instead of 2048", size_of(type_of(core_option_definition.values)));
        assert(((cast(*void)(*instance.default_value)) - cast(*void)(*instance)) == 2072, "core_option_definition.default_value has unexpected offset % instead of 2072", ((cast(*void)(*instance.default_value)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_definition.default_value)) == 8, "core_option_definition.default_value has unexpected size % instead of 8", size_of(type_of(core_option_definition.default_value)));
        assert(size_of(core_option_definition) == 2080, "core_option_definition has size % instead of 2080", size_of(core_option_definition));
    }

    {
        instance: core_options_intl;
        assert(((cast(*void)(*instance.us)) - cast(*void)(*instance)) == 0, "core_options_intl.us has unexpected offset % instead of 0", ((cast(*void)(*instance.us)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_options_intl.us)) == 8, "core_options_intl.us has unexpected size % instead of 8", size_of(type_of(core_options_intl.us)));
        assert(((cast(*void)(*instance.local)) - cast(*void)(*instance)) == 8, "core_options_intl.local has unexpected offset % instead of 8", ((cast(*void)(*instance.local)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_options_intl.local)) == 8, "core_options_intl.local has unexpected size % instead of 8", size_of(type_of(core_options_intl.local)));
        assert(size_of(core_options_intl) == 16, "core_options_intl has size % instead of 16", size_of(core_options_intl));
    }

    {
        instance: core_option_v2_category;
        assert(((cast(*void)(*instance.key)) - cast(*void)(*instance)) == 0, "core_option_v2_category.key has unexpected offset % instead of 0", ((cast(*void)(*instance.key)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_category.key)) == 8, "core_option_v2_category.key has unexpected size % instead of 8", size_of(type_of(core_option_v2_category.key)));
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 8, "core_option_v2_category.desc has unexpected offset % instead of 8", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_category.desc)) == 8, "core_option_v2_category.desc has unexpected size % instead of 8", size_of(type_of(core_option_v2_category.desc)));
        assert(((cast(*void)(*instance.info)) - cast(*void)(*instance)) == 16, "core_option_v2_category.info has unexpected offset % instead of 16", ((cast(*void)(*instance.info)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_category.info)) == 8, "core_option_v2_category.info has unexpected size % instead of 8", size_of(type_of(core_option_v2_category.info)));
        assert(size_of(core_option_v2_category) == 24, "core_option_v2_category has size % instead of 24", size_of(core_option_v2_category));
    }

    {
        instance: core_option_v2_definition;
        assert(((cast(*void)(*instance.key)) - cast(*void)(*instance)) == 0, "core_option_v2_definition.key has unexpected offset % instead of 0", ((cast(*void)(*instance.key)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.key)) == 8, "core_option_v2_definition.key has unexpected size % instead of 8", size_of(type_of(core_option_v2_definition.key)));
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 8, "core_option_v2_definition.desc has unexpected offset % instead of 8", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.desc)) == 8, "core_option_v2_definition.desc has unexpected size % instead of 8", size_of(type_of(core_option_v2_definition.desc)));
        assert(((cast(*void)(*instance.desc_categorized)) - cast(*void)(*instance)) == 16, "core_option_v2_definition.desc_categorized has unexpected offset % instead of 16", ((cast(*void)(*instance.desc_categorized)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.desc_categorized)) == 8, "core_option_v2_definition.desc_categorized has unexpected size % instead of 8", size_of(type_of(core_option_v2_definition.desc_categorized)));
        assert(((cast(*void)(*instance.info)) - cast(*void)(*instance)) == 24, "core_option_v2_definition.info has unexpected offset % instead of 24", ((cast(*void)(*instance.info)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.info)) == 8, "core_option_v2_definition.info has unexpected size % instead of 8", size_of(type_of(core_option_v2_definition.info)));
        assert(((cast(*void)(*instance.info_categorized)) - cast(*void)(*instance)) == 32, "core_option_v2_definition.info_categorized has unexpected offset % instead of 32", ((cast(*void)(*instance.info_categorized)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.info_categorized)) == 8, "core_option_v2_definition.info_categorized has unexpected size % instead of 8", size_of(type_of(core_option_v2_definition.info_categorized)));
        assert(((cast(*void)(*instance.category_key)) - cast(*void)(*instance)) == 40, "core_option_v2_definition.category_key has unexpected offset % instead of 40", ((cast(*void)(*instance.category_key)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.category_key)) == 8, "core_option_v2_definition.category_key has unexpected size % instead of 8", size_of(type_of(core_option_v2_definition.category_key)));
        assert(((cast(*void)(*instance.values)) - cast(*void)(*instance)) == 48, "core_option_v2_definition.values has unexpected offset % instead of 48", ((cast(*void)(*instance.values)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.values)) == 2048, "core_option_v2_definition.values has unexpected size % instead of 2048", size_of(type_of(core_option_v2_definition.values)));
        assert(((cast(*void)(*instance.default_value)) - cast(*void)(*instance)) == 2096, "core_option_v2_definition.default_value has unexpected offset % instead of 2096", ((cast(*void)(*instance.default_value)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_option_v2_definition.default_value)) == 8, "core_option_v2_definition.default_value has unexpected size % instead of 8", size_of(type_of(core_option_v2_definition.default_value)));
        assert(size_of(core_option_v2_definition) == 2104, "core_option_v2_definition has size % instead of 2104", size_of(core_option_v2_definition));
    }

    {
        instance: core_options_v2;
        assert(((cast(*void)(*instance.categories)) - cast(*void)(*instance)) == 0, "core_options_v2.categories has unexpected offset % instead of 0", ((cast(*void)(*instance.categories)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_options_v2.categories)) == 8, "core_options_v2.categories has unexpected size % instead of 8", size_of(type_of(core_options_v2.categories)));
        assert(((cast(*void)(*instance.definitions)) - cast(*void)(*instance)) == 8, "core_options_v2.definitions has unexpected offset % instead of 8", ((cast(*void)(*instance.definitions)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_options_v2.definitions)) == 8, "core_options_v2.definitions has unexpected size % instead of 8", size_of(type_of(core_options_v2.definitions)));
        assert(size_of(core_options_v2) == 16, "core_options_v2 has size % instead of 16", size_of(core_options_v2));
    }

    {
        instance: core_options_v2_intl;
        assert(((cast(*void)(*instance.us)) - cast(*void)(*instance)) == 0, "core_options_v2_intl.us has unexpected offset % instead of 0", ((cast(*void)(*instance.us)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_options_v2_intl.us)) == 8, "core_options_v2_intl.us has unexpected size % instead of 8", size_of(type_of(core_options_v2_intl.us)));
        assert(((cast(*void)(*instance.local)) - cast(*void)(*instance)) == 8, "core_options_v2_intl.local has unexpected offset % instead of 8", ((cast(*void)(*instance.local)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_options_v2_intl.local)) == 8, "core_options_v2_intl.local has unexpected size % instead of 8", size_of(type_of(core_options_v2_intl.local)));
        assert(size_of(core_options_v2_intl) == 16, "core_options_v2_intl has size % instead of 16", size_of(core_options_v2_intl));
    }

    {
        instance: core_options_update_display_callback;
        assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 0, "core_options_update_display_callback.callback has unexpected offset % instead of 0", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
        assert(size_of(type_of(core_options_update_display_callback.callback)) == 8, "core_options_update_display_callback.callback has unexpected size % instead of 8", size_of(type_of(core_options_update_display_callback.callback)));
        assert(size_of(core_options_update_display_callback) == 8, "core_options_update_display_callback has size % instead of 8", size_of(core_options_update_display_callback));
    }

    {
        instance: game_info;
        assert(((cast(*void)(*instance.path)) - cast(*void)(*instance)) == 0, "game_info.path has unexpected offset % instead of 0", ((cast(*void)(*instance.path)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info.path)) == 8, "game_info.path has unexpected size % instead of 8", size_of(type_of(game_info.path)));
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 8, "game_info.data has unexpected offset % instead of 8", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info.data)) == 8, "game_info.data has unexpected size % instead of 8", size_of(type_of(game_info.data)));
        assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 16, "game_info.size has unexpected offset % instead of 16", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info.size)) == 8, "game_info.size has unexpected size % instead of 8", size_of(type_of(game_info.size)));
        assert(((cast(*void)(*instance.meta)) - cast(*void)(*instance)) == 24, "game_info.meta has unexpected offset % instead of 24", ((cast(*void)(*instance.meta)) - cast(*void)(*instance)));
        assert(size_of(type_of(game_info.meta)) == 8, "game_info.meta has unexpected size % instead of 8", size_of(type_of(game_info.meta)));
        assert(size_of(game_info) == 32, "game_info has size % instead of 32", size_of(game_info));
    }

    {
        instance: framebuffer;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "framebuffer.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(framebuffer.data)) == 8, "framebuffer.data has unexpected size % instead of 8", size_of(type_of(framebuffer.data)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 8, "framebuffer.width has unexpected offset % instead of 8", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(framebuffer.width)) == 4, "framebuffer.width has unexpected size % instead of 4", size_of(type_of(framebuffer.width)));
        assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 12, "framebuffer.height has unexpected offset % instead of 12", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
        assert(size_of(type_of(framebuffer.height)) == 4, "framebuffer.height has unexpected size % instead of 4", size_of(type_of(framebuffer.height)));
        assert(((cast(*void)(*instance.pitch)) - cast(*void)(*instance)) == 16, "framebuffer.pitch has unexpected offset % instead of 16", ((cast(*void)(*instance.pitch)) - cast(*void)(*instance)));
        assert(size_of(type_of(framebuffer.pitch)) == 8, "framebuffer.pitch has unexpected size % instead of 8", size_of(type_of(framebuffer.pitch)));
        assert(((cast(*void)(*instance.format)) - cast(*void)(*instance)) == 24, "framebuffer.format has unexpected offset % instead of 24", ((cast(*void)(*instance.format)) - cast(*void)(*instance)));
        assert(size_of(type_of(framebuffer.format)) == 4, "framebuffer.format has unexpected size % instead of 4", size_of(type_of(framebuffer.format)));
        assert(((cast(*void)(*instance.access_flags)) - cast(*void)(*instance)) == 28, "framebuffer.access_flags has unexpected offset % instead of 28", ((cast(*void)(*instance.access_flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(framebuffer.access_flags)) == 4, "framebuffer.access_flags has unexpected size % instead of 4", size_of(type_of(framebuffer.access_flags)));
        assert(((cast(*void)(*instance.memory_flags)) - cast(*void)(*instance)) == 32, "framebuffer.memory_flags has unexpected offset % instead of 32", ((cast(*void)(*instance.memory_flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(framebuffer.memory_flags)) == 4, "framebuffer.memory_flags has unexpected size % instead of 4", size_of(type_of(framebuffer.memory_flags)));
        assert(size_of(framebuffer) == 40, "framebuffer has size % instead of 40", size_of(framebuffer));
    }

    {
        instance: fastforwarding_override;
        assert(((cast(*void)(*instance.ratio)) - cast(*void)(*instance)) == 0, "fastforwarding_override.ratio has unexpected offset % instead of 0", ((cast(*void)(*instance.ratio)) - cast(*void)(*instance)));
        assert(size_of(type_of(fastforwarding_override.ratio)) == 4, "fastforwarding_override.ratio has unexpected size % instead of 4", size_of(type_of(fastforwarding_override.ratio)));
        assert(((cast(*void)(*instance.fastforward)) - cast(*void)(*instance)) == 4, "fastforwarding_override.fastforward has unexpected offset % instead of 4", ((cast(*void)(*instance.fastforward)) - cast(*void)(*instance)));
        assert(size_of(type_of(fastforwarding_override.fastforward)) == 1, "fastforwarding_override.fastforward has unexpected size % instead of 1", size_of(type_of(fastforwarding_override.fastforward)));
        assert(((cast(*void)(*instance.notification)) - cast(*void)(*instance)) == 5, "fastforwarding_override.notification has unexpected offset % instead of 5", ((cast(*void)(*instance.notification)) - cast(*void)(*instance)));
        assert(size_of(type_of(fastforwarding_override.notification)) == 1, "fastforwarding_override.notification has unexpected size % instead of 1", size_of(type_of(fastforwarding_override.notification)));
        assert(((cast(*void)(*instance.inhibit_toggle)) - cast(*void)(*instance)) == 6, "fastforwarding_override.inhibit_toggle has unexpected offset % instead of 6", ((cast(*void)(*instance.inhibit_toggle)) - cast(*void)(*instance)));
        assert(size_of(type_of(fastforwarding_override.inhibit_toggle)) == 1, "fastforwarding_override.inhibit_toggle has unexpected size % instead of 1", size_of(type_of(fastforwarding_override.inhibit_toggle)));
        assert(size_of(fastforwarding_override) == 8, "fastforwarding_override has size % instead of 8", size_of(fastforwarding_override));
    }

    {
        instance: throttle_state;
        assert(((cast(*void)(*instance.mode)) - cast(*void)(*instance)) == 0, "throttle_state.mode has unexpected offset % instead of 0", ((cast(*void)(*instance.mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(throttle_state.mode)) == 4, "throttle_state.mode has unexpected size % instead of 4", size_of(type_of(throttle_state.mode)));
        assert(((cast(*void)(*instance.rate)) - cast(*void)(*instance)) == 4, "throttle_state.rate has unexpected offset % instead of 4", ((cast(*void)(*instance.rate)) - cast(*void)(*instance)));
        assert(size_of(type_of(throttle_state.rate)) == 4, "throttle_state.rate has unexpected size % instead of 4", size_of(type_of(throttle_state.rate)));
        assert(size_of(throttle_state) == 8, "throttle_state has size % instead of 8", size_of(throttle_state));
    }

    {
        instance: microphone_params;
        assert(((cast(*void)(*instance.rate)) - cast(*void)(*instance)) == 0, "microphone_params.rate has unexpected offset % instead of 0", ((cast(*void)(*instance.rate)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_params.rate)) == 4, "microphone_params.rate has unexpected size % instead of 4", size_of(type_of(microphone_params.rate)));
        assert(size_of(microphone_params) == 4, "microphone_params has size % instead of 4", size_of(microphone_params));
    }

    {
        instance: microphone_interface;
        assert(((cast(*void)(*instance.interface_version)) - cast(*void)(*instance)) == 0, "microphone_interface.interface_version has unexpected offset % instead of 0", ((cast(*void)(*instance.interface_version)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_interface.interface_version)) == 4, "microphone_interface.interface_version has unexpected size % instead of 4", size_of(type_of(microphone_interface.interface_version)));
        assert(((cast(*void)(*instance.open_mic)) - cast(*void)(*instance)) == 8, "microphone_interface.open_mic has unexpected offset % instead of 8", ((cast(*void)(*instance.open_mic)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_interface.open_mic)) == 8, "microphone_interface.open_mic has unexpected size % instead of 8", size_of(type_of(microphone_interface.open_mic)));
        assert(((cast(*void)(*instance.close_mic)) - cast(*void)(*instance)) == 16, "microphone_interface.close_mic has unexpected offset % instead of 16", ((cast(*void)(*instance.close_mic)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_interface.close_mic)) == 8, "microphone_interface.close_mic has unexpected size % instead of 8", size_of(type_of(microphone_interface.close_mic)));
        assert(((cast(*void)(*instance.get_params)) - cast(*void)(*instance)) == 24, "microphone_interface.get_params has unexpected offset % instead of 24", ((cast(*void)(*instance.get_params)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_interface.get_params)) == 8, "microphone_interface.get_params has unexpected size % instead of 8", size_of(type_of(microphone_interface.get_params)));
        assert(((cast(*void)(*instance.set_mic_state)) - cast(*void)(*instance)) == 32, "microphone_interface.set_mic_state has unexpected offset % instead of 32", ((cast(*void)(*instance.set_mic_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_interface.set_mic_state)) == 8, "microphone_interface.set_mic_state has unexpected size % instead of 8", size_of(type_of(microphone_interface.set_mic_state)));
        assert(((cast(*void)(*instance.get_mic_state)) - cast(*void)(*instance)) == 40, "microphone_interface.get_mic_state has unexpected offset % instead of 40", ((cast(*void)(*instance.get_mic_state)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_interface.get_mic_state)) == 8, "microphone_interface.get_mic_state has unexpected size % instead of 8", size_of(type_of(microphone_interface.get_mic_state)));
        assert(((cast(*void)(*instance.read_mic)) - cast(*void)(*instance)) == 48, "microphone_interface.read_mic has unexpected offset % instead of 48", ((cast(*void)(*instance.read_mic)) - cast(*void)(*instance)));
        assert(size_of(type_of(microphone_interface.read_mic)) == 8, "microphone_interface.read_mic has unexpected size % instead of 8", size_of(type_of(microphone_interface.read_mic)));
        assert(size_of(microphone_interface) == 56, "microphone_interface has size % instead of 56", size_of(microphone_interface));
    }

    {
        instance: device_power;
        assert(((cast(*void)(*instance.state)) - cast(*void)(*instance)) == 0, "device_power.state has unexpected offset % instead of 0", ((cast(*void)(*instance.state)) - cast(*void)(*instance)));
        assert(size_of(type_of(device_power.state)) == 4, "device_power.state has unexpected size % instead of 4", size_of(type_of(device_power.state)));
        assert(((cast(*void)(*instance.seconds)) - cast(*void)(*instance)) == 4, "device_power.seconds has unexpected offset % instead of 4", ((cast(*void)(*instance.seconds)) - cast(*void)(*instance)));
        assert(size_of(type_of(device_power.seconds)) == 4, "device_power.seconds has unexpected size % instead of 4", size_of(type_of(device_power.seconds)));
        assert(((cast(*void)(*instance.percent)) - cast(*void)(*instance)) == 8, "device_power.percent has unexpected offset % instead of 8", ((cast(*void)(*instance.percent)) - cast(*void)(*instance)));
        assert(size_of(type_of(device_power.percent)) == 1, "device_power.percent has unexpected size % instead of 1", size_of(type_of(device_power.percent)));
        assert(size_of(device_power) == 12, "device_power has size % instead of 12", size_of(device_power));
    }
}

