// thank you https://github.com/heuripedes/nanoarch

#import "Basic";
#import "GL";
Input :: #import "Input";
#import "Render";
#import "Window_Creation";
#import "String";
#import "System";
#import "Math";
saudio :: #import "Sokol_Audio";

#import "Retro";

Key_Code :: Input.Key_Code;

Keymap :: struct {
    k: Key_Code;
    rk: u32;
}

make_keymap :: (k: Key_Code, rk: u32) -> Keymap {
    key_map: Keymap;
    key_map.k = k;
    key_map.rk = rk;
    return key_map;
}

GL_Core :: struct {
    using core: Core;

    audio: struct {
        mute: bool = false;
        did_init_with_sample_rate: float64 = -1;
    };

    video: struct {
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

    joy: [DEVICE_ID_JOYPAD_R3 + 1]s16;
    binds: [11]Keymap;
};

g_core: *GL_Core; // TODO: do we need this global, or is there a way to sneak userdata in through libretro calls?

core_environment :: (cmd: Environment_Command, data: *void) -> bool #c_call {
    ctx: Context;
    push_context ctx {
    assert(g_core != null);

    if cmd == {
        case .GET_LOG_INTERFACE;
            cb := cast(*Log_Callback)data;
            cb.log = core_log;
        case .GET_CAN_DUPE;
            bval := cast(*bool)data;
            << bval = true;
        case .SET_PIXEL_FORMAT;
            fmt := cast(*Pixel_Format)data;
            if (<< fmt) > Pixel_Format.RGB565
                return false;
            return video_set_pixel_format(<< fmt);
        case .GET_SYSTEM_DIRECTORY;
            <<(cast(**u8)data) = ".";
        case .GET_SAVE_DIRECTORY;
            <<(cast(**u8)data) = ".";
        case .GET_VARIABLE_UPDATE;
            <<(cast(*bool)data) = false;
        case .SET_VARIABLES;
            var := cast(*Variable)data;
            while true {
                if var.key == null && var.value == null break;
                //print("set variables predeclared: % %\n", to_string(var.key), to_string(var.value));
                var = var + 1;
            }
        case .GET_VARIABLE;
            var := cast(*Variable)data;
            //print("! GET_VARIABLE %: %\n", to_string(var.key), var.value);
        case .SET_CONTROLLER_INFO;
            info := cast(*Controller_Info)data;
            //print("---controllers:\n");
            for i: 0..info.num_types-1 {
                controller_desc := info.types[i];
                //print("  %, id=%\n", to_string(controller_desc.desc), controller_desc.id); 
            }
        case .SET_GEOMETRY;
            geo := << cast(*Game_Geometry)data;
            print("TODO: handle SET_GEOMETRY %\n", geo);
        case .GET_AUDIO_VIDEO_ENABLE;
            <<(cast(*s32)data) = 0
                | (1 << 0) // enable video
                | (1 << 1) // enable audio
             // | (1 << 2) // use fast savestates
             // | (1 << 3) // hard disable audio
             ;



        case;
            print("Unhandled env %\n", cmd);
            return false;
    }

	return true;
    }
}

video_set_pixel_format :: (format: Pixel_Format) -> bool {
    assert(g_core != null);
    using g_core;

	if video.tex_id != 0
		panic("Tried to change pixel format after initialization.");

	if format == {
	case Pixel_Format._0RGB1555;
		video.pixfmt = GL_UNSIGNED_SHORT_5_5_5_1;
		video.pixtype = GL_BGRA;
		video.bpp = size_of(u16);
	case Pixel_Format.XRGB8888;
		video.pixfmt = GL_UNSIGNED_INT_8_8_8_8_REV;
		video.pixtype = GL_BGRA;
		video.bpp = size_of(u32);
	case Pixel_Format.RGB565;
		video.pixfmt  = GL_UNSIGNED_SHORT_5_6_5;
		video.pixtype = GL_RGB;
		video.bpp = size_of(u16);
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
    ctx: Context;
    push_context ctx {
    assert(g_core != null);
    }

    using g_core;

	if video.clip_w != width || video.clip_h != height {
		video.clip_w = width;
		video.clip_h = height;
	}

	glBindTexture(GL_TEXTURE_2D, video.tex_id);

	if pitch != video.pitch {
		video.pitch = pitch;
		glPixelStorei(GL_UNPACK_ROW_LENGTH, cast(s32)(video.pitch / video.bpp));
	}

	if data != null
		glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, width, height, video.pixtype, video.pixfmt, data);
}

core_video_refresh :: (data: *void, width: u32, height: u32, pitch: int) #c_call {
    ctx: Context;
    push_context ctx {
        if data != null
            video_refresh(data, width, height, cast(u32)pitch);
    }
}

on_window_resized :: (window: *Input.Window_Type, w: u32, h: u32) {
    glViewport(0, 0, w, h);
}

resize_to_aspect :: (ratio: float64, sw: s32, sh: s32, dw: *s32, dh: *s32) {
	<<dw = sw;
	<<dh = sh;

	if ratio <= 0
		ratio = cast(float64)sw / sh;

	if cast(float)sw / sh < 1 {
		(<<dw) = cast(s32)((<<dh) * ratio);
    } else {
		(<<dh) = cast(s32)((<<dw) / ratio);
    }
}


video_configure :: (geom: *Game_Geometry) {
    //print("video_configure with %\n", << geom);
    assert(g_core != null);
    using g_core;
    assert(glGetError() == GL_NO_ERROR);
	nwidth: s32;
    nheight: s32;

	resize_to_aspect(geom.aspect_ratio, cast(s32)geom.base_width * 1, cast(s32)geom.base_height * 1, *nwidth, *nheight);
    assert(glGetError() == GL_NO_ERROR);

	nwidth = cast(s32)(nwidth * g_scale);
	nheight = cast(s32)(nheight * g_scale);

    video.window_width = nwidth;
    video.window_height = nheight;

	if (video.tex_id)
		glDeleteTextures(1, *video.tex_id);

	video.tex_id = 0;

	if (!video.pixfmt)
		video.pixfmt = GL_UNSIGNED_SHORT_5_5_5_1;

    assert(glGetError() == GL_NO_ERROR);
	glGenTextures(1, *video.tex_id);
    assert(glGetError() == GL_NO_ERROR);

	if !video.tex_id
		panic("Failed to create the video texture");

	video.pitch = geom.base_width * video.bpp;

	glBindTexture(GL_TEXTURE_2D, video.tex_id);

//	glPixelStorei(GL_UNPACK_ALIGNMENT, s_video.pixfmt == GL_UNSIGNED_INT_8_8_8_8_REV ? 4 : 2);
//	glPixelStorei(GL_UNPACK_ROW_LENGTH, s_video.pitch / s_video.bpp);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

    //print("tex image created with max_width % and max_height %\n", geom.max_width, geom.max_height);
    //print("clip_w/h is % %\n", geom.base_width, geom.base_height);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, geom.max_width, geom.max_height, 0,
			video.pixtype, video.pixfmt, null);

	glBindTexture(GL_TEXTURE_2D, 0);

	video.tex_w = cast(s32)geom.max_width;
	video.tex_h = cast(s32)geom.max_height;
	video.clip_w = geom.base_width;
	video.clip_h = geom.base_height;
}

get_video_texture :: (core: *GL_Core) -> u32 {
    return core.video.tex_id;
}

get_video_texture_uv :: (core: *GL_Core) -> Vector2 {
    assert(core != null);
    using core.video;
    return make_vector2(cast(float)clip_w / tex_w, cast(float)clip_h / tex_h);
}

get_video_texture_aspect :: (core: *GL_Core) -> float {
    assert(core != null);
    using core.video;
    return cast(float)clip_w / clip_h;
}

load_core :: (core: *GL_Core, filename: string) -> success: bool {
    g_core = core;
    defer g_core = null;

    if !load_core_funcs(core, filename)
        return false;

    set_environment: (Environment) #foreign               = load_and_check_sym(core.handle, "retro_set_environment");
    set_video_refresh: (Video_Refresh) #foreign           = load_and_check_sym(core.handle, "retro_set_video_refresh");
	set_input_poll: (Input_Poll) #foreign                 = load_and_check_sym(core.handle, "retro_set_input_poll");
	set_input_state: (Input_State) #foreign               = load_and_check_sym(core.handle, "retro_set_input_state");
    set_audio_sample: (Audio_Sample) #foreign             = load_and_check_sym(core.handle, "retro_set_audio_sample");
    set_audio_sample_batch: (Audio_Sample_Batch) #foreign = load_and_check_sym(core.handle, "retro_set_audio_sample_batch");

    //print("libretro_api_version: %\n", core.api_version());

    set_environment(core_environment);
    core.init();
    set_video_refresh(core_video_refresh);
    set_input_poll(core_input_poll);
    set_input_state(core_input_state);
    set_audio_sample(core_audio_sample);
    set_audio_sample_batch(core_audio_sample_batch);

    return true;
}

advance_frame :: (core: *GL_Core) {
    g_core = core;
    defer g_core = null;

    core.run();
}

load_game :: (core: *GL_Core, filename: string) -> success: bool {
    info: Game_Info;
    info.path = temp_c_string(filename);

    {
        // TODO: can these be set in a constant array init declaration above? @Jai
        core.binds[0]  = make_keymap(cast(Key_Code)(#char "X"), DEVICE_ID_JOYPAD_A);
        core.binds[1]  = make_keymap(cast(Key_Code)(#char "Z"), DEVICE_ID_JOYPAD_B);
        core.binds[2]  = make_keymap(cast(Key_Code)(#char "A"), DEVICE_ID_JOYPAD_Y);
        core.binds[3]  = make_keymap(cast(Key_Code)(#char "S"), DEVICE_ID_JOYPAD_X);
        core.binds[4]  = make_keymap(Key_Code.ARROW_UP, DEVICE_ID_JOYPAD_UP);
        core.binds[5]  = make_keymap(Key_Code.ARROW_DOWN, DEVICE_ID_JOYPAD_DOWN);
        core.binds[6]  = make_keymap(Key_Code.ARROW_LEFT, DEVICE_ID_JOYPAD_LEFT);
        core.binds[7]  = make_keymap(Key_Code.ARROW_RIGHT, DEVICE_ID_JOYPAD_RIGHT);
        core.binds[8]  = make_keymap(Key_Code.ENTER, DEVICE_ID_JOYPAD_START);
        core.binds[9]  = make_keymap(Key_Code.BACKSPACE, DEVICE_ID_JOYPAD_SELECT);
    }

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

    g_core = core;
    defer g_core = null;

    if !core.load_game(*info) {
        log_eprintln("The core failed to load the game.");
        return false;
    }

    av: System_AV_Info;
    core.get_system_av_info(*av);

    // setup video
    video_configure(*av.geometry);

    // setup audio
    if !core.audio.mute && av.timing.sample_rate != core.audio.did_init_with_sample_rate {
        if core.audio.did_init_with_sample_rate != -1 {
            print("AUDIO shutting down\n");
            saudio.shutdown();
        }

        saudio_desc: saudio.Desc;
        saudio_desc.num_channels = 2;
        saudio_desc.sample_rate = cast(s32)av.timing.sample_rate;

        print("initing audio with sample rate % and % channels\n", saudio_desc.sample_rate, saudio_desc.num_channels);
        saudio.setup(*saudio_desc);

        assert(saudio.isvalid()); // TODO: don't hard crash if we don't have a sound card....

        core.audio.did_init_with_sample_rate = av.timing.sample_rate;
    }

    return true;
}

panic :: (msg: string) {
    assert(false, msg);
    exit(1);
}

core_log :: (level: Log_Level, fmt: *u8, args:..*void) #c_call {
    ctx: Context;
    push_context ctx {
    write_string(to_string(fmt));
    }
}

core_input_poll :: () #c_call {
    using g_core;

    for binds {
        button_state := Input.input_button_states[it.k];
        is_down_right_now := button_state & Input.Key_Current_State.DOWN;
        if is_down_right_now
            joy[it.rk] = 1;
        else
            joy[it.rk] = 0;
    }
}

core_input_state :: (port: u32, device: Device, index: u32, id: u32) -> s16 #c_call {
    using g_core;

	if port || index || device != .JOYPAD || id >= joy.count
		return 0;
    
    return joy[id];
}

core_audio_sample :: (left: s16, right: s16) #c_call {
	//int16_t buf[2] = {left, right};
	//audio_write(buf, 1);

    ctx: Context;
    push_context ctx {
        assert(false, "TODO: implement single sample version of libretro audio");
    }
}

flt_buf: [4096]float;

core_audio_sample_batch :: (data: *s16, frames: int) -> int #c_call {
    // One frame is defined as a sample of left and right channels, interleaved.
    // I.e. int16_t buf[4] = { l, r, l, r }; would be 2 frames.

    if !g_core.audio.mute {
        S16_MAX :: 32767;
        for i: 0..frames*2 {
            flt_buf[i] = cast(float)data[i] / cast(float)S16_MAX;
        }
        
        saudio.push(flt_buf.data, cast(s32)frames);
    }

    return frames;
}