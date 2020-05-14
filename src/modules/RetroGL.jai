#import "Basic";
#import "GL";
#import "Input";
#import "Render";
#import "Window_Creation";
#import "String";
#import "System";
#import "Math";

#import "Retro";

g_video: struct {
	tex_id: GLuint;
	pitch: GLuint;
	tex_w: GLint;
    tex_h: GLint;
	clip_w: GLuint;
    clip_h: GLuint;

	pixfmt: GLuint;
	pixtype: GLuint;
	bpp: GLuint;

    window_width, window_height: s32;
};


core_environment :: (cmd: Environment_Command, data: *void) -> bool #c_call {
    ctx: Context;
    push_context ctx {
    if cmd == {
        case Environment_Command.GET_LOG_INTERFACE;
            cb := cast(*Log_Callback)data;
            cb.log = core_log;
        case Environment_Command.GET_CAN_DUPE;
            bval := cast(*bool)data;
            << bval = true;
        case Environment_Command.SET_PIXEL_FORMAT;
            fmt := cast(*Pixel_Format)data;
            if (<< fmt) > Pixel_Format.RGB565
                return false;
            return video_set_pixel_format(<< fmt);
        case Environment_Command.GET_SYSTEM_DIRECTORY;
            <<(cast(**u8)data) = ".";
        case Environment_Command.GET_SAVE_DIRECTORY;
            <<(cast(**u8)data) = ".";
        case Environment_Command.GET_VARIABLE_UPDATE;
            <<(cast(*bool)data) = false;
        case;
            print("Unhandled env %\n", cmd);
            return false;
    }

	return true;
    }
}

video_set_pixel_format :: (format: Pixel_Format) -> bool {
	if g_video.tex_id != 0
		panic("Tried to change pixel format after initialization.");

	if format == {
	case Pixel_Format._0RGB1555;
		g_video.pixfmt = GL_UNSIGNED_SHORT_5_5_5_1;
		g_video.pixtype = GL_BGRA;
		g_video.bpp = size_of(u16);
	case Pixel_Format.XRGB8888;
		g_video.pixfmt = GL_UNSIGNED_INT_8_8_8_8_REV;
		g_video.pixtype = GL_BGRA;
		g_video.bpp = size_of(u32);
	case Pixel_Format.RGB565;
		g_video.pixfmt  = GL_UNSIGNED_SHORT_5_6_5;
		g_video.pixtype = GL_RGB;
		g_video.bpp = size_of(u16);
	case;
		panic(tprint("Unknown pixel type %", format));
	}

	return true;
}

/* Render a frame. Pixel format is 15-bit 0RGB1555 native endian
 * unless changed (see RETRO_ENVIRONMENT_SET_PIXEL_FORMAT).
 *
 * Width and height specify dimensions of buffer.
 * Pitch specifices length in bytes between two lines in buffer.
 *
 * For performance reasons, it is highly recommended to have a frame
 * that is packed in memory, i.e. pitch == width * byte_per_pixel.
 * Certain graphic APIs, such as OpenGL ES, do not like textures
 * that are not packed in memory.
 */

video_refresh :: (data: *void, width: u32, height: u32, pitch: u32) #c_call {
	if g_video.clip_w != width || g_video.clip_h != height {
		g_video.clip_w = width;
		g_video.clip_h = height;
		refresh_vertex_data();
	}

	glBindTexture(GL_TEXTURE_2D, g_video.tex_id);

	if pitch != g_video.pitch {
		g_video.pitch = pitch;
		glPixelStorei(GL_UNPACK_ROW_LENGTH, cast(s32)(g_video.pitch / g_video.bpp));
	}

	if data != null
		glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, width, height,
						g_video.pixtype, g_video.pixfmt, data);
}

refresh_vertex_data :: () #c_call {
    ctx: Context;
    push_context ctx {
        assert(g_video.tex_w != 0);
        assert(g_video.tex_h != 0);
        assert(g_video.clip_w != 0);
        assert(g_video.clip_h != 0);

        coords := g_texcoords.data;
        a := cast(float)g_video.clip_h / g_video.tex_h;
        b := cast(float)g_video.clip_w / g_video.tex_w;
        coords[1] = a; coords[5] = a;
        coords[4] = b; coords[6] = b;

        print("TODO: refresh_vertex_data wants to do uv stuff\n");
    }
}
core_video_refresh :: (data: *void, width: u32, height: u32, pitch: int) #c_call {
    ctx: Context;
    push_context ctx {
        if data != null
            video_refresh(data, width, height, cast(u32)pitch);
    }
}

on_window_resized :: (window: *Window_Type, w: u32, h: u32) {
    glViewport(0, 0, w, h);
}

video_configure :: (geom: *Game_Geometry) {
    assert(glGetError() == GL_NO_ERROR);
	nwidth: s32;
    nheight: s32;

	resize_to_aspect(geom.aspect_ratio, cast(s32)geom.base_width * 1, cast(s32)geom.base_height * 1, *nwidth, *nheight);
    assert(glGetError() == GL_NO_ERROR);

	nwidth = cast(s32)(nwidth * g_scale);
	nheight = cast(s32)(nheight * g_scale);

    g_video.window_width = nwidth;
    g_video.window_height = nheight;
    /*

	if !g_win {
        g_win := create_window(nwidth, nheight, "jairetro");
        gl_create_context(g_win, 3, 2);
        gl_load(*gl);

        debug_callback :: (source: GLenum, type: GLenum, id: GLuint, severity: GLenum, length: GLsizei, message: *u8, userParam: *void) #c_call {
            pctx := cast(*Context) userParam;
            ctx := <<pctx;
            push_context ctx {
                #if OS_WINDOWS {
                    if type == GL_DEBUG_TYPE_ERROR print("GL Error:%\n", to_string(message));
                }
            }
        }

        if GL_VERSION_4_3 {
            glDebugMessageCallback(debug_callback, *context);
            glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS);
        } else if GL_ARB_debug_output {
            glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS);
            glDebugMessageCallbackARB(debug_callback, *context);
        }

        vao: u32;
        glGenVertexArrays(1, *vao);
        glBindVertexArray(vao);

        glEnable(GL_TEXTURE_2D);
        on_window_resized(g_win, cast(u32)nwidth, cast(u32)nheight);
    }
    */

	if (g_video.tex_id)
		glDeleteTextures(1, *g_video.tex_id);

	g_video.tex_id = 0;

	if (!g_video.pixfmt)
		g_video.pixfmt = GL_UNSIGNED_SHORT_5_5_5_1;

    assert(glGetError() == GL_NO_ERROR);
	glGenTextures(1, *g_video.tex_id);
    assert(glGetError() == GL_NO_ERROR);

	if !g_video.tex_id
		panic("Failed to create the video texture");

	g_video.pitch = geom.base_width * g_video.bpp;

	glBindTexture(GL_TEXTURE_2D, g_video.tex_id);

//	glPixelStorei(GL_UNPACK_ALIGNMENT, s_video.pixfmt == GL_UNSIGNED_INT_8_8_8_8_REV ? 4 : 2);
//	glPixelStorei(GL_UNPACK_ROW_LENGTH, s_video.pitch / s_video.bpp);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, geom.max_width, geom.max_height, 0,
			g_video.pixtype, g_video.pixfmt, null);

	glBindTexture(GL_TEXTURE_2D, 0);

	g_video.tex_w = cast(s32)geom.max_width;
	g_video.tex_h = cast(s32)geom.max_height;
	g_video.clip_w = geom.base_width;
	g_video.clip_h = geom.base_height;

	refresh_vertex_data();
}

// This will identify our vertex buffer
vertexbuffer: GLuint;

get_video_texture :: () -> u32 { return g_video.tex_id; }

load_core :: (core: *Core, filename: string) -> success: bool {
    if !load_core_funcs(core, filename)
        return false;

    set_environment: (Environment) #foreign =     load_and_check_sym(core.handle, "retro_set_environment");
    set_video_refresh: (Video_Refresh) #foreign = load_and_check_sym(core.handle, "retro_set_video_refresh");

    print("api_version: %\n", core.api_version());

    set_environment(core_environment);


    core.init();
    set_video_refresh(core_video_refresh);

    print("core % loaded.\n", filename);
    return true;
}

load_game :: (core: *Core, filename: string) -> success: bool {
    info: Game_Info;
    info.path = temp_c_string(filename);

    modtime, size, success := File_Utilities.file_modtime_and_size(filename);
    if !success {
        log_eprintln("Could not read file '%'", filename);
        return false;
    }

    info.size = size;

    system: System_Info;
    core.get_system_info(*system);
    print("% %\n", to_string(system.library_name), to_string(system.library_version));
    print("  accepts games with extensions '%'\n", to_string(system.valid_extensions));

    if !system.need_fullpath {
        data, file_read_success := File.read_entire_file(filename);
        if !file_read_success {
            log_eprintln("Could not read bytes from file '%'", filename);
            return false;
        }
        assert(data.count == info.size);

        info.data = data.data;
    }

    if !core.load_game(*info) {
        log_eprintln("The core failed to load the game.");
        return false;
    }

    av: System_AV_Info;
    core.get_system_av_info(*av);
    video_configure(*av.geometry);
    //audio_init(av.timing.sample_rate);

    return true;
}
