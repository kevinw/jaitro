#import "Basic";
#import "GL";
#import "Window_Creation";
#import "Input";
#import "Simp";
#import "File";
#import "Random";
#import "String";
#import "Math";
#import "Gamepad";
#import "System";

#load "config.jai";
#load "render.jai";
#load "util.jai";

Retro :: #import "Retro";
RetroGL :: #import "RetroGL";

#if OS == .WINDOWS {
    // press ` (~) to show the imgui debug ui for editing settings live.
    DEBUG_UI :: true; 
} else {
    // TODO: implement some of the imgui input bits for non windows platforms
    // (Input module doesn't have mouse move events)
    DEBUG_UI :: false; 
}

#if DEBUG_UI {
    #load "imgui_inspector.jai";
}

Menu_Selection :: enum s8 {
    CONTINUE_GAME :: 0;
    RESET_GAME :: 1;
    QUIT :: 2;
};
Menu_Selection_MAX :: 2;

FONT_HEIGHT :: 28;

game: struct {
    cores: [..]RetroGL.GL_Core;

    settings: struct {
        core := "data/cores/nes/quicknes_libretro.dll";
        rom  := "data/roms/nes/nes/assimilate_full_dl.nes";
        mute_all_sounds: bool;
    };

    stats: struct {
        num_enemies_defeated: u32;
    };

    time_scale := 1.0;

    FPS := 0;
    rendered_frame_count:s64 = 0;
    fps_time := 0.0;
    gamepad_time := 0.0;
    last_time: float64;
    elapsed_time: float64;
    fullscreen := false;
    saved_window_info: Saved_Window_Info;

    game_framebuffer: Framebuffer;
    textured_quad_shader: GLuint;
    untextured_quad_shader: GLuint;
    unlit_shader: GLuint;

    lights: [..] *Light;

    font: *Dynamic_Font;
    window_width: s32;
    window_height: s32;

    immediate_draw_buffer_id: u32;

    shadow_map_size: s32 = 512;

    msaa := true;
    
    projection: Matrix4;
    view: Matrix4; // conceptually the transform of the camera from (0,0,0), the shader will invert this

    mode: enum {
        GAME;
        MENU;
    };

    menu_selection: Menu_Selection;
    quit := false;

    down_pressed := false;
    up_pressed := false;
    left_pressed := false;
    right_pressed := false;
    enter_pressed := false;

    fps_string: string;
};

render_game :: () {
    glClearColor(0.0, 0.6, 0.1, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    view := game.view;
    defer game.view = view;

    glEnable(GL_DEPTH_TEST);
    defer glDisable(GL_DEPTH_TEST);

    // UI

    glDisable(GL_DEPTH_TEST);
    proj := game.projection;
    defer game.projection = proj;

    game.view = matrix4_identity();
    game.projection = orthographic_projection_matrix(0, cast(float) game.window_width, 0, cast(float) game.window_height, -1, 1);

    white := make_vector4(1, 1, 1, 1);

    {
        base := game.window_height - FONT_HEIGHT;
        text := tprint("TODO");
        color := white;
        offset := 0;
        draw_text(game.font, color, offset, base, text);
    }

    {
        base := game.window_height - FONT_HEIGHT;
        text := game.fps_string;
        color := white;
        offset := game.window_width - 300;
        draw_text(game.font, color, offset, base, text);
    }
}


draw_text_centered :: (color: Vector4, y: s32, text: string) {
    x := game.window_width / 2  - get_string_width_in_pixels(game.font, text) / 2;
    draw_text(game.font, color, xx x, xx y, text);
}

render_menu :: () {
    proj := game.projection;
    defer game.projection = proj;
    view := game.view;
    defer game.view = view;

    game.view = matrix4_identity();

    game.projection = orthographic_projection_matrix(0, cast(float) game.window_width, 0, cast(float) game.window_height, -1, 1);
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
    draw_quad(make_Quad(0, 0, cast(float) game.window_width, cast(float) game.window_height), make_vector4(0.2, 0.2, 0.2, 0.5));
    glDisable(GL_BLEND);

    yellow := make_vector4(1, 1, 0, 1);
    white  := make_vector4(1, 1, 1, 1);

    base := game.window_height - 330 + 64;

    {
        color := white;
        if game.menu_selection == .CONTINUE_GAME then color = yellow;
        draw_text_centered(color, xx base, "Continue");
    }
    base -= 64;
    {
        color := white;
        if game.menu_selection == .RESET_GAME then color = yellow;
        draw_text_centered(color, base, "Reset Game");
    }
    base -= 64;
    {
        color := white;
        if game.menu_selection == .QUIT then color = yellow;
        draw_text_centered(color, base, "Quit");
    }
}

render :: () {
    if game.msaa glEnable(GL_MULTISAMPLE);
    defer if game.msaa glDisable(GL_MULTISAMPLE);

    use_frame_buffer(*game.game_framebuffer);

    // Render the libretro core.

    num_cores := game.cores.count;

    for *it, idx: game.cores {
        W := 3.0 / cast(float)num_cores;
        H := 3.0 / cast(float)num_cores;

        uv := RetroGL.get_video_texture_uv(it);

        tex := make_Quad(0, 0, 1, 1);
        tex.x1 = uv.x;
        tex.y1 = uv.y;
        // flip ys
        tex.y0 = 1.0 - tex.y0;
        tex.y1 = 1.0 - tex.y1;

        aspect := RetroGL.get_video_texture_aspect(it);
        W *= aspect;

        // TODO: use glViewport with screenWidth and screenHeight to not have to use this
        screen_aspect := cast(float) game.window_width / cast(float) game.window_height;
        W /= screen_aspect;

        x := -W + W * idx;
        y := -H*0.5;

        draw_unlit_quad(make_Quad(x, y, W, H), tex, RetroGL.get_video_texture(it));
    }

    if game.mode == .MENU then render_menu();
    use_frame_buffer(null);

    proj := game.projection;
    defer game.projection = proj;
    view := game.view;
    defer game.view = view;

    game.view = matrix4_identity();

    game.projection = orthographic_projection_matrix(0, 1, 0, 1, -1, 1);

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
    fb := game.game_framebuffer;
    glBindFramebuffer(GL_READ_FRAMEBUFFER, fb.id);

    window_fb_width, window_fb_height := get_framebuffer_dimensions(null);
    glBlitFramebuffer(0, 0, fb.width, fb.height, 0, 0, window_fb_width, window_fb_height, GL_COLOR_BUFFER_BIT, GL_NEAREST);

    glFlush();

    glBindFramebuffer(GL_FRAMEBUFFER, 0);

    #if DEBUG_UI ImGui.Render();
}

update_menu :: (dt: float) {
    using game;

    if up_pressed && menu_selection > 0
        menu_selection -= cast(Menu_Selection)1;

    if down_pressed && menu_selection < xx Menu_Selection_MAX
        menu_selection += cast(Menu_Selection)1;

    if enter_pressed {
        if #complete menu_selection == {
            case .CONTINUE_GAME; mode = .GAME;
            case .RESET_GAME; reset_game();
            case .QUIT; game.quit = true;
        }
    }
}

update :: (dt: float) {
    using game;

    if #complete mode == {
        case mode.GAME;
            for * game.cores {
                RetroGL.advance_frame(it);
            }

        case mode.MENU;
            update_menu(dt);
    }
}

reset_game :: () {
    for * game.cores
        Retro.reset(it);

    using game;
    
    mode = .GAME;

    down_pressed = false;
    up_pressed = false;
    left_pressed = false;
    right_pressed = false;
    enter_pressed = false;

    menu_selection = .CONTINUE_GAME;
}

debug_callback :: (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: *u8, userParam: *void) #c_call {
    pctx := cast(*Context) userParam;
    ctx := <<pctx;
    push_context ctx {
        #if OS == .WINDOWS {
            // print("source: %\n", source);
            // print("type: %\n", type);
            // print("id: %\n", id);
            // print("severity: %\n", severity);
            // print("length: %\n", length);
            // print("message: %\n", message);
            print("userParam: %\n", userParam);
            if type == GL_DEBUG_TYPE_ERROR print("GL Error:%\n", to_string(message));
        }
    }
}


init_game :: () {
    context.logger = (message: string, ident: string, mode: Log_Mode, data: *void) {
        print("[%] %", ident, message);
    };

    {
        found, exe_path, exe_name := split_by_character_from_right(get_path_of_running_executable(), #char "/");
        if !found {
            print("Error: unable to find my own exe\n");
            return;
        }
        parse_config_file(*game.settings, tprint("%/%", exe_path, "jaitro.cfg"));
    }

    init_gamepad();

    if running_at_compile_time() {
        set_working_directory(sprint("%1%2", #filepath, "../run_tree"));
    } else {
        #if OS_MACOSX {
            bundle_dir := osx_get_bundle_resources_directory();
            print("Bundle Resource Directory: %\n", bundle_dir);
            set_working_directory(bundle_dir);
        } else {
            set_working_directory(path_strip_filename(get_path_of_running_executable()));
        }
    }
}

load_resources :: () {
    {
        vert, ok1 := read_entire_file("data/shaders/textured_quad.vert");
        frag, ok2 := read_entire_file("data/shaders/textured_quad.frag");
        untext_frag, ok3 := read_entire_file("data/shaders/untextured_quad.frag");
        unlit_frag, ok4 := read_entire_file("data/shaders/unlit.frag");
        simple_vert, ok5 := read_entire_file("data/shaders/simple.vert");

        assert(ok1);
        assert(ok2);
        assert(ok3);
        assert(ok4);
        assert(ok5);
        
        defer free(vert);
        defer free(frag);
        defer free(untext_frag);
        defer free(unlit_frag);
        defer free(simple_vert);
        
        game.textured_quad_shader = compile_shader_source(vert, frag);
        game.untextured_quad_shader = compile_shader_source(vert, untext_frag);
        game.unlit_shader = compile_shader_source(simple_vert, unlit_frag);
    }

    game.font = load_font("data", "YanoneKaffeesatz-Regular.otf", FONT_HEIGHT);
}

do_frame :: (window: Window_Type) -> did_render_frame: bool {
    was_resized, record := is_a_window_resized();
    if was_resized {
        width, height := record.width, record.height;
        game.window_width = width;
        game.window_height = height;
        fb_width, fb_height := get_framebuffer_dimensions(null);
        resize_buffer(*game.game_framebuffer, fb_width, fb_height);
    }

    width := game.window_width;
    height := game.window_height;
    // print("width, height: % , %\n", width, height);
    // glViewport(0, 0, cast(u32) width, cast(u32) height);
    
    aspect := cast(float) width / cast(float) height;
    FOV_DEGREES :: 90.0;
    game.projection = make_projection_matrix((TAU / 360.0) * FOV_DEGREES, aspect, 0.1, 1000.0, x_offset=0, y_offset=0);
    q: Quaternion;
    set_from_axis_and_angle(*q, 1.0, 0.0, 0.0, (PI/2) - (PI/20));
    game.view = make_rotation_matrix4(q) * make_translation_matrix4(make_vector3(0, 0, 0));

    for events_this_frame {
        #if DEBUG_UI ImGui_Impl_ProcessEvent(it);

        using game;
        if it.type == {
            case Event_Type.QUIT;
                quit = true;
            case Event_Type.KEYBOARD;
                key_down := it.key_pressed != 0;
                if it.key_code == {
                    case Key_Code.F5;
                        if key_down {
                            if game.cores.count > 0 save_game(*game.cores[0]);
                        }
                    case Key_Code.F9;
                        if key_down {
                            if game.cores.count > 0 load_game(*game.cores[0]);
                        }
                    case cast(Key_Code)(#char "`"); if key_down show_inspector = !show_inspector;

                    case cast(Key_Code)(#char "Q");
                        if key_down && it.shift_pressed quit = true;
                    case Key_Code.ESCAPE;
                        if it.key_pressed == 1 {
                            if mode == mode.GAME then mode = mode.MENU;
                            else if mode == mode.MENU then mode = mode.GAME;
                        }
                    case .ARROW_UP;
                        up_pressed = key_down;
                    case .ARROW_DOWN;
                        down_pressed = key_down;
                    case .ARROW_LEFT;
                        left_pressed = key_down;
                    case .ARROW_RIGHT;
                        right_pressed = key_down;
                    case .ENTER;
                        if key_down {
                            if it.alt_pressed then {
                                toggle_fullscreen(window, !fullscreen, *saved_window_info);
                                fullscreen = !fullscreen;
                            } else {
                                enter_pressed = true;
                            }
                        }
                }
        }
    }

    if gamepad.connected {
        if gamepad.buttons[Gamepad_Code.START] & Key_Current_State.START {
            if game.mode == game.mode.GAME then game.mode = game.mode.MENU;
            else if game.mode == game.mode.MENU then game.mode = game.mode.GAME;
        }
        if gamepad.buttons[Gamepad_Code.DPAD_UP] & Key_Current_State.START
            game.up_pressed = true;
        if gamepad.buttons[Gamepad_Code.DPAD_DOWN] & Key_Current_State.START
            game.down_pressed = true;
        if gamepad.buttons[Gamepad_Code.DPAD_LEFT] & Key_Current_State.START
            game.left_pressed = true;
        if gamepad.buttons[Gamepad_Code.DPAD_RIGHT] & Key_Current_State.START
            game.right_pressed = true;
        if gamepad.buttons[Gamepad_Code.A] & Key_Current_State.START
            game.enter_pressed = true;
        if gamepad.buttons[Gamepad_Code.B] & Key_Current_State.START
            if game.mode == game.mode.MENU then game.mode = game.mode.GAME;
    }

    #if DEBUG_UI new_imgui_frame(window);

    dt: float;
    now := get_time();
    if game.last_time dt = cast(float) (now - game.last_time);
    game.last_time = now;
    
    game.elapsed_time += dt;
    game.fps_time += dt;
    game.gamepad_time += dt;
    
    TICK_PERIOD: float64 : 1.0/60.0; // time between game updates
    need_to_render := false;
    while game.elapsed_time >= TICK_PERIOD {
        game.elapsed_time -= TICK_PERIOD;
        need_to_render = true;
        update(xx TICK_PERIOD);

        assert(glGetError() == GL_NO_ERROR);

        game.down_pressed = false;
        game.up_pressed = false;
        game.left_pressed = false;
        game.right_pressed = false;
        game.enter_pressed = false;
    }

    if need_to_render {
        game.FPS += 1;
        game.rendered_frame_count += 1;
        render();
    }

    if game.fps_time >= 1.0 {
        free(game.fps_string);
        game.fps_string = sprint("FPS: %", game.FPS);
        game.fps_time -= 1.0;
        game.FPS = 0;
    }

    GAMEPAD_SCAN_TICK_PERIOD :: 5.0;
    if game.gamepad_time > GAMEPAD_SCAN_TICK_PERIOD {
        game.gamepad_time -= GAMEPAD_SCAN_TICK_PERIOD;
        init_gamepad();
    }

    return need_to_render;
}

show_inspector: bool;
#if DEBUG_UI {
    new_imgui_frame :: (window: *void) {
        ImGui_Impl_NewFrame(window, game.window_width, game.window_height);
        if show_inspector
            for * game.cores 
                inspect("core", it);
    }
}

main :: () {
    change_to_runtree_dir();
    init_game();

    DEFAULT_WIN_WIDTH :: 1280;
    DEFAULT_WIN_HEIGHT :: 720;

    window := create_window(DEFAULT_WIN_WIDTH, DEFAULT_WIN_HEIGHT, "jaitro");
    gl_create_context(window, 3, 2);
    gl_load(*gl);
    assert(glGetError() == GL_NO_ERROR);

    if GL_VERSION_4_3 {
        glDebugMessageCallback(debug_callback, *context);
        glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS);
    } else if GL_ARB_debug_output {
        glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS);
        glDebugMessageCallbackARB(debug_callback, *context);
    }

    #if DEBUG_UI {
        ImGui_Impl_Init(window);
        ImGui.StyleColorsLight();
    }

    for rom_filename_short, idx: split(game.settings.rom, "|") {
        array_resize(*game.cores, game.cores.count + 1);
        new_core := *game.cores[game.cores.count - 1];

        core_filename := tprint("data/cores/%", game.settings.core);
        rom_filename  := tprint("data/roms/%", rom_filename_short);

        if idx > 0 {
            // for now, mute any core but the first, since our audio backend can't handle
            // multiple sources at the moment.
            new_core.audio.mute = true;
        }

        if (!RetroGL.load_core(new_core, core_filename)) exit(1);
        if (!RetroGL.load_game(new_core, rom_filename)) exit(1);
        assert(glGetError() == GL_NO_ERROR);
    }


    {
        using game;
        window_width = DEFAULT_WIN_HEIGHT;
        window_height = DEFAULT_WIN_HEIGHT;

        load_resources();

        view = matrix4_identity();
    
        reset_game();

        vao: u32;
        glGenVertexArrays(1, *vao);
        glBindVertexArray(vao);

        glGenBuffers(1, *immediate_draw_buffer_id);

        game_framebuffer = make_framebuffer(DEFAULT_WIN_WIDTH, DEFAULT_WIN_HEIGHT, msaa=game.msaa);
        fb_width, fb_height := get_framebuffer_dimensions(null);
        resize_buffer(*game_framebuffer, fb_width, fb_height);
    }

    #if OS_MACOSX {
        Objective_C :: #import "Objective_C";
        #import "Objective_C/LightweightRenderingView";

        view := Objective_C.NSWindow.contentView(window);
        glview := cast(*LightweightOpenGLView) view;

        value: s32 = 1;
        Objective_C.NSOpenGLContext.setValues(glview.glContext(glview), *value, Objective_C.NSOpenGLContextParameterSwapInterval);
    }

    while true {
        update_window_events();
        update_gamepad();
        reset_temporary_storage();
        if game.quit break;
        if do_frame(window) swap_buffers(window);
    }
}

change_to_runtree_dir :: () {
    if running_at_compile_time() {
        set_working_directory(sprint("%1%2", #filepath, "../run_tree"));
    } else {
        #if OS_MACOSX {
            set_working_directory(osx_get_bundle_resources_directory());
        } else {
            set_working_directory(path_strip_filename(get_path_of_running_executable()));
        }
    }
}

_saved_game: []u8;

save_game :: (core: *Retro.Core) {
    sz := core.serialize_size();
    assert(sz > 0);
    data := alloc(sz);
    memset(data, 0, sz);
    ok := core.serialize(data, sz);
    if !ok {
        Log.error();
        Log.print("could not unserialize save game!\n");
        return;
    }

    _saved_game.data = data;
    _saved_game.count = sz;

    s: string;
    s.data = _saved_game.data;
    s.count = _saved_game.count;
}

load_game :: (core: *Retro.Core) {
    if _saved_game.data != null {
        ok := core.unserialize(_saved_game.data, _saved_game.count);
        if !ok {
            Log.error();
            Log.print("could not unserialize save game!\n");
        }
    }
}

load_state_from_file :: (core: *Retro.Core, save_filename: string) -> bool {
    assert(core != null);

    bytes, ok := read_entire_file(save_filename);
    return ok && core.unserialize(bytes.data, bytes.count);
}
