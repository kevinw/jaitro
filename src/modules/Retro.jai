#import "Basic";
#import "GL";
#import "Input";
#import "Render";
#import "Window_Creation";

dynlib :: #import "Dyn_Lib";
Log :: #import "Log";
File_Utilities :: #import "File_Utilities";
File :: #import "File";

log_eprintln :: (msg: string, args: ..Any) {
    Log.error();
    msg_with_newline := tprint("%\n", msg);
    Log.print(msg_with_newline, ..args);
}

g_win: *Window_Type;
g_scale :: 3.0;

g_texcoords := {:float:
	0.0,  1.0,
	0.0,  0.0,
	1.0,  1.0,
	1.0,  0.0,
};

EXIT_FAILURE :: -1;

Log_Level :: enum s32 {
   DEBUG :: 0;
   INFO :: 1;
   WARN :: 2;
   ERROR :: 3;
};

Log_Printf :: #type (level: Log_Level, fmt: *u8, args:..*void) #c_call;

Log_Callback :: struct {
   log: Log_Printf;
};

Environment :: #type (cmd: Environment_Command, data: *void) -> bool #c_call;
Video_Refresh :: #type (data: *void, width: u32, height: u32, pitch: int) #c_call;

RETRO_ENVIRONMENT_EXPERIMENTAL :: 0x10000;

Environment_Command :: enum u32 {

SET_ROTATION :: 1; /* const unsigned * --
                   * Sets screen rotation of graphics.
                   * Valid values are 0, 1, 2, 3, which rotates screen by 0, 90, 180,
                   * 270 degrees counter-clockwise respectively.
                   */
GET_OVERSCAN :: 2; /* bool * --
                   * NOTE: As of 2019 this callback is considered deprecated in favor of
                   * using core options to manage overscan in a more nuanced, core-specific way.
                   *
                   * Boolean value whether or not the implementation should use overscan,
                   * or crop away overscan.
                   */
GET_CAN_DUPE ::  3;/* bool * --
                   * Boolean value whether or not frontend supports frame duping,
                   * passing NULL to video frame callback.
                   */

                  /* Environ 4, 5 are no longer supported (GET_VARIABLE / SET_VARIABLES),
                   * and reserved to avoid possible ABI clash.
                   */

SET_MESSAGE :: 6; /* const struct retro_message * --
                  * Sets a message to be displayed in implementation-specific manner
                  * for a certain amount of 'frames'.
                  * Should not be used for trivial messages, which should simply be
                  * logged via RETRO_ENVIRONMENT_GET_LOG_INTERFACE (or as a
                  * fallback, stderr).
                  */
SHUTDOWN ::    7; /* N/A (NULL) --
                  * Requests the frontend to shutdown.
                  * Should only be used if game has a specific
                  * way to shutdown the game from a menu item or similar.
                  */
SET_PERFORMANCE_LEVEL :: 8;
                 /* const unsigned * --
                  * Gives a hint to the frontend how demanding this implementation
                  * is on a system. E.g. reporting a level of 2 means
                  * this implementation should run decently on all frontends
                  * of level 2 and up.
                  *
                  * It can be used by the frontend to potentially warn
                  * about too demanding implementations.
                  *
                  * The levels are "floating".
                  *
                  * This function can be called on a per-game basis,
                  * as certain games an implementation can play might be
                  * particularly demanding.
                  * If called, it should be called in retro_load_game().
                  */
GET_SYSTEM_DIRECTORY :: 9;
                 /* const char ** --
                  * Returns the "system" directory of the frontend.
                  * This directory can be used to store system specific
                  * content such as BIOSes, configuration data, etc.
                  * The returned value can be NULL.
                  * If so, no such directory is defined,
                  * and it's up to the implementation to find a suitable directory.
                  *
                  * NOTE: Some cores used this folder also for "save" data such as
                  * memory cards, etc, for lack of a better place to put it.
                  * This is now discouraged, and if possible, cores should try to
                  * use the new GET_SAVE_DIRECTORY.
                  */
SET_PIXEL_FORMAT :: 10;
                 /* const enum retro_pixel_format * --
                  * Sets the internal pixel format used by the implementation.
                  * The default pixel format is RETRO_PIXEL_FORMAT_0RGB1555.
                  * This pixel format however, is deprecated (see enum retro_pixel_format).
                  * If the call returns false, the frontend does not support this pixel
                  * format.
                  *
                  * This function should be called inside retro_load_game() or
                  * retro_get_system_av_info().
                  */
SET_INPUT_DESCRIPTORS :: 11;
                 /* const struct retro_input_descriptor * --
                  * Sets an array of retro_input_descriptors.
                  * It is up to the frontend to present this in a usable way.
                  * The array is terminated by retro_input_descriptor::description
                  * being set to NULL.
                  * This function can be called at any time, but it is recommended
                  * to call it as early as possible.
                  */
SET_KEYBOARD_CALLBACK :: 12;
                 /* const struct retro_keyboard_callback * --
                  * Sets a callback function used to notify core about keyboard events.
                  */
SET_DISK_CONTROL_INTERFACE :: 13;
                 /* const struct retro_disk_control_callback * --
                  * Sets an interface which frontend can use to eject and insert
                  * disk images.
                  * This is used for games which consist of multiple images and
                  * must be manually swapped out by the user (e.g. PSX).
                  */
SET_HW_RENDER :: 14;
                 /* struct retro_hw_render_callback * --
                  * Sets an interface to let a libretro core render with
                  * hardware acceleration.
                  * Should be called in retro_load_game().
                  * If successful, libretro cores will be able to render to a
                  * frontend-provided framebuffer.
                  * The size of this framebuffer will be at least as large as
                  * max_width/max_height provided in get_av_info().
                  * If HW rendering is used, pass only RETRO_HW_FRAME_BUFFER_VALID or
                  * NULL to retro_video_refresh_t.
                  */
GET_VARIABLE :: 15;
                 /* struct retro_variable * --
                  * Interface to acquire user-defined information from environment
                  * that cannot feasibly be supported in a multi-system way.
                  * 'key' should be set to a key which has already been set by
                  * SET_VARIABLES.
                  * 'data' will be set to a value or NULL.
                  */
SET_VARIABLES :: 16;
                 /* const struct retro_variable * --
                  * Allows an implementation to signal the environment
                  * which variables it might want to check for later using
                  * GET_VARIABLE.
                  * This allows the frontend to present these variables to
                  * a user dynamically.
                  * This should be called the first time as early as
                  * possible (ideally in retro_set_environment).
                  * Afterward it may be called again for the core to communicate
                  * updated options to the frontend, but the number of core
                  * options must not change from the number in the initial call.
                  *
                  * 'data' points to an array of retro_variable structs
                  * terminated by a { NULL, NULL } element.
                  * retro_variable::key should be namespaced to not collide
                  * with other implementations' keys. E.g. A core called
                  * 'foo' should use keys named as 'foo_option'.
                  * retro_variable::value should contain a human readable
                  * description of the key as well as a '|' delimited list
                  * of expected values.
                  *
                  * The number of possible options should be very limited,
                  * i.e. it should be feasible to cycle through options
                  * without a keyboard.
                  *
                  * First entry should be treated as a default.
                  *
                  * Example entry:
                  * { "foo_option", "Speed hack coprocessor X; false|true" }
                  *
                  * Text before first ';' is description. This ';' must be
                  * followed by a space, and followed by a list of possible
                  * values split up with '|'.
                  *
                  * Only strings are operated on. The possible values will
                  * generally be displayed and stored as-is by the frontend.
                  */
GET_VARIABLE_UPDATE :: 17;
                 /* bool * --
                  * Result is set to true if some variables are updated by
                  * frontend since last call to RETRO_ENVIRONMENT_GET_VARIABLE.
                  * Variables should be queried with GET_VARIABLE.
                  */
SET_SUPPORT_NO_GAME :: 18;
                 /* const bool * --
                  * If true, the libretro implementation supports calls to
                  * retro_load_game() with NULL as argument.
                  * Used by cores which can run without particular game data.
                  * This should be called within retro_set_environment() only.
                  */
GET_LIBRETRO_PATH :: 19;
                 /* const char ** --
                  * Retrieves the absolute path from where this libretro
                  * implementation was loaded.
                  * NULL is returned if the libretro was loaded statically
                  * (i.e. linked statically to frontend), or if the path cannot be
                  * determined.
                  * Mostly useful in cooperation with SET_SUPPORT_NO_GAME as assets can
                  * be loaded without ugly hacks.
                  */

                 /* Environment 20 was an obsolete version of SET_AUDIO_CALLBACK.
                  * It was not used by any known core at the time,
                  * and was removed from the API. */
SET_FRAME_TIME_CALLBACK :: 21;
                 /* const struct retro_frame_time_callback * --
                  * Lets the core know how much time has passed since last
                  * invocation of retro_run().
                  * The frontend can tamper with the timing to fake fast-forward,
                  * slow-motion, frame stepping, etc.
                  * In this case the delta time will use the reference value
                  * in frame_time_callback..
                  */
SET_AUDIO_CALLBACK :: 22;
                 /* const struct retro_audio_callback * --
                  * Sets an interface which is used to notify a libretro core about audio
                  * being available for writing.
                  * The callback can be called from any thread, so a core using this must
                  * have a thread safe audio implementation.
                  * It is intended for games where audio and video are completely
                  * asynchronous and audio can be generated on the fly.
                  * This interface is not recommended for use with emulators which have
                  * highly synchronous audio.
                  *
                  * The callback only notifies about writability; the libretro core still
                  * has to call the normal audio callbacks
                  * to write audio. The audio callbacks must be called from within the
                  * notification callback.
                  * The amount of audio data to write is up to the implementation.
                  * Generally, the audio callback will be called continously in a loop.
                  *
                  * Due to thread safety guarantees and lack of sync between audio and
                  * video, a frontend  can selectively disallow this interface based on
                  * internal configuration. A core using this interface must also
                  * implement the "normal" audio interface.
                  *
                  * A libretro core using SET_AUDIO_CALLBACK should also make use of
                  * SET_FRAME_TIME_CALLBACK.
                  */
GET_RUMBLE_INTERFACE :: 23;
                 /* struct retro_rumble_interface * --
                  * Gets an interface which is used by a libretro core to set
                  * state of rumble motors in controllers.
                  * A strong and weak motor is supported, and they can be
                  * controlled indepedently.
                  */
GET_INPUT_DEVICE_CAPABILITIES :: 24;
                 /* uint64_t * --
                  * Gets a bitmask telling which device type are expected to be
                  * handled properly in a call to retro_input_state_t.
                  * Devices which are not handled or recognized always return
                  * 0 in retro_input_state_t.
                  * Example bitmask: caps = (1 << RETRO_DEVICE_JOYPAD) | (1 << RETRO_DEVICE_ANALOG).
                  * Should only be called in retro_run().
                  */
GET_SENSOR_INTERFACE :: (25 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* struct retro_sensor_interface * --
                  * Gets access to the sensor interface.
                  * The purpose of this interface is to allow
                  * setting state related to sensors such as polling rate,
                  * enabling/disable it entirely, etc.
                  * Reading sensor state is done via the normal
                  * input_state_callback API.
                  */
GET_CAMERA_INTERFACE :: (26 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* struct retro_camera_callback * --
                  * Gets an interface to a video camera driver.
                  * A libretro core can use this interface to get access to a
                  * video camera.
                  * New video frames are delivered in a callback in same
                  * thread as retro_run().
                  *
                  * GET_CAMERA_INTERFACE should be called in retro_load_game().
                  *
                  * Depending on the camera implementation used, camera frames
                  * will be delivered as a raw framebuffer,
                  * or as an OpenGL texture directly.
                  *
                  * The core has to tell the frontend here which types of
                  * buffers can be handled properly.
                  * An OpenGL texture can only be handled when using a
                  * libretro GL core (SET_HW_RENDER).
                  * It is recommended to use a libretro GL core when
                  * using camera interface.
                  *
                  * The camera is not started automatically. The retrieved start/stop
                  * functions must be used to explicitly
                  * start and stop the camera driver.
                  */
GET_LOG_INTERFACE :: 27;
                 /* struct retro_log_callback * --
                  * Gets an interface for logging. This is useful for
                  * logging in a cross-platform way
                  * as certain platforms cannot use stderr for logging.
                  * It also allows the frontend to
                  * show logging information in a more suitable way.
                  * If this interface is not used, libretro cores should
                  * log to stderr as desired.
                  */
GET_PERF_INTERFACE :: 28;
                 /* struct retro_perf_callback * --
                  * Gets an interface for performance counters. This is useful
                  * for performance logging in a cross-platform way and for detecting
                  * architecture-specific features, such as SIMD support.
                  */
GET_LOCATION_INTERFACE :: 29;
                 /* struct retro_location_callback * --
                  * Gets access to the location interface.
                  * The purpose of this interface is to be able to retrieve
                  * location-based information from the host device,
                  * such as current latitude / longitude.
                  */
GET_CONTENT_DIRECTORY :: 30; /* Old name, kept for compatibility. */
GET_CORE_ASSETS_DIRECTORY :: 30;
                 /* const char ** --
                  * Returns the "core assets" directory of the frontend.
                  * This directory can be used to store specific assets that the
                  * core relies upon, such as art assets,
                  * input data, etc etc.
                  * The returned value can be NULL.
                  * If so, no such directory is defined,
                  * and it's up to the implementation to find a suitable directory.
                  */
GET_SAVE_DIRECTORY :: 31;
                 /* const char ** --
                  * Returns the "save" directory of the frontend, unless there is no
                  * save directory available. The save directory should be used to
                  * store SRAM, memory cards, high scores, etc, if the libretro core
                  * cannot use the regular memory interface (retro_get_memory_data()).
                  *
                  * If the frontend cannot designate a save directory, it will return
                  * NULL to indicate that the core should attempt to operate without a
                  * save directory set.
                  *
                  * NOTE: early libretro cores used the system directory for save
                  * files. Cores that need to be backwards-compatible can still check
                  * GET_SYSTEM_DIRECTORY.
                  */
SET_SYSTEM_AV_INFO :: 32;
                 /* const struct retro_system_av_info * --
                  * Sets a new av_info structure. This can only be called from
                  * within retro_run().
                  * This should *only* be used if the core is completely altering the
                  * internal resolutions, aspect ratios, timings, sampling rate, etc.
                  * Calling this can require a full reinitialization of video/audio
                  * drivers in the frontend,
                  *
                  * so it is important to call it very sparingly, and usually only with
                  * the users explicit consent.
                  * An eventual driver reinitialize will happen so that video and
                  * audio callbacks
                  * happening after this call within the same retro_run() call will
                  * target the newly initialized driver.
                  *
                  * This callback makes it possible to support configurable resolutions
                  * in games, which can be useful to
                  * avoid setting the "worst case" in max_width/max_height.
                  *
                  * ***HIGHLY RECOMMENDED*** Do not call this callback every time
                  * resolution changes in an emulator core if it's
                  * expected to be a temporary change, for the reasons of possible
                  * driver reinitialization.
                  * This call is not a free pass for not trying to provide
                  * correct values in retro_get_system_av_info(). If you need to change
                  * things like aspect ratio or nominal width/height,
                  * use RETRO_ENVIRONMENT_SET_GEOMETRY, which is a softer variant
                  * of SET_SYSTEM_AV_INFO.
                  *
                  * If this returns false, the frontend does not acknowledge a
                  * changed av_info struct.
                  */
SET_PROC_ADDRESS_CALLBACK :: 33;
                 /* const struct retro_get_proc_address_interface * --
                  * Allows a libretro core to announce support for the
                  * get_proc_address() interface.
                  * This interface allows for a standard way to extend libretro where
                  * use of environment calls are too indirect,
                  * e.g. for cases where the frontend wants to call directly into the core.
                  *
                  * If a core wants to expose this interface, SET_PROC_ADDRESS_CALLBACK
                  * **MUST** be called from within retro_set_environment().
                  */
SET_SUBSYSTEM_INFO :: 34;
                 /* const struct retro_subsystem_info * --
                  * This environment call introduces the concept of libretro "subsystems".
                  * A subsystem is a variant of a libretro core which supports
                  * different kinds of games.
                  * The purpose of this is to support e.g. emulators which might
                  * have special needs, e.g. Super Nintendo's Super GameBoy, Sufami Turbo.
                  * It can also be used to pick among subsystems in an explicit way
                  * if the libretro implementation is a multi-system emulator itself.
                  *
                  * Loading a game via a subsystem is done with retro_load_game_special(),
                  * and this environment call allows a libretro core to expose which
                  * subsystems are supported for use with retro_load_game_special().
                  * A core passes an array of retro_game_special_info which is terminated
                  * with a zeroed out retro_game_special_info struct.
                  *
                  * If a core wants to use this functionality, SET_SUBSYSTEM_INFO
                  * **MUST** be called from within retro_set_environment().
                  */
SET_CONTROLLER_INFO :: 35;
                 /* const struct retro_controller_info * --
                  * This environment call lets a libretro core tell the frontend
                  * which controller subclasses are recognized in calls to
                  * retro_set_controller_port_device().
                  *
                  * Some emulators such as Super Nintendo support multiple lightgun
                  * types which must be specifically selected from. It is therefore
                  * sometimes necessary for a frontend to be able to tell the core
                  * about a special kind of input device which is not specifcally
                  * provided by the Libretro API.
                  *
                  * In order for a frontend to understand the workings of those devices,
                  * they must be defined as a specialized subclass of the generic device
                  * types already defined in the libretro API.
                  *
                  * The core must pass an array of const struct retro_controller_info which
                  * is terminated with a blanked out struct. Each element of the
                  * retro_controller_info struct corresponds to the ascending port index
                  * that is passed to retro_set_controller_port_device() when that function
                  * is called to indicate to the core that the frontend has changed the
                  * active device subclass. SEE ALSO: retro_set_controller_port_device()
                  *
                  * The ascending input port indexes provided by the core in the struct
                  * are generally presented by frontends as ascending User # or Player #,
                  * such as Player 1, Player 2, Player 3, etc. Which device subclasses are
                  * supported can vary per input port.
                  *
                  * The first inner element of each entry in the retro_controller_info array
                  * is a retro_controller_description struct that specifies the names and
                  * codes of all device subclasses that are available for the corresponding
                  * User or Player, beginning with the generic Libretro device that the
                  * subclasses are derived from. The second inner element of each entry is the
                  * total number of subclasses that are listed in the retro_controller_description.
                  *
                  * NOTE: Even if special device types are set in the libretro core,
                  * libretro should only poll input based on the base input device types.
                  */
SET_MEMORY_MAPS :: (36 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* const struct retro_memory_map * --
                  * This environment call lets a libretro core tell the frontend
                  * about the memory maps this core emulates.
                  * This can be used to implement, for example, cheats in a core-agnostic way.
                  *
                  * Should only be used by emulators; it doesn't make much sense for
                  * anything else.
                  * It is recommended to expose all relevant pointers through
                  * retro_get_memory_* as well.
                  *
                  * Can be called from retro_init and retro_load_game.
                  */
SET_GEOMETRY :: 37;
                 /* const struct retro_game_geometry * --
                  * This environment call is similar to SET_SYSTEM_AV_INFO for changing
                  * video parameters, but provides a guarantee that drivers will not be
                  * reinitialized.
                  * This can only be called from within retro_run().
                  *
                  * The purpose of this call is to allow a core to alter nominal
                  * width/heights as well as aspect ratios on-the-fly, which can be
                  * useful for some emulators to change in run-time.
                  *
                  * max_width/max_height arguments are ignored and cannot be changed
                  * with this call as this could potentially require a reinitialization or a
                  * non-constant time operation.
                  * If max_width/max_height are to be changed, SET_SYSTEM_AV_INFO is required.
                  *
                  * A frontend must guarantee that this environment call completes in
                  * constant time.
                  */
GET_USERNAME :: 38;
                 /* const char **
                  * Returns the specified username of the frontend, if specified by the user.
                  * This username can be used as a nickname for a core that has online facilities
                  * or any other mode where personalization of the user is desirable.
                  * The returned value can be NULL.
                  * If this environ callback is used by a core that requires a valid username,
                  * a default username should be specified by the core.
                  */
GET_LANGUAGE :: 39;
                 /* unsigned * --
                  * Returns the specified language of the frontend, if specified by the user.
                  * It can be used by the core for localization purposes.
                  */
GET_CURRENT_SOFTWARE_FRAMEBUFFER :: (40 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* struct retro_framebuffer * --
                  * Returns a preallocated framebuffer which the core can use for rendering
                  * the frame into when not using SET_HW_RENDER.
                  * The framebuffer returned from this call must not be used
                  * after the current call to retro_run() returns.
                  *
                  * The goal of this call is to allow zero-copy behavior where a core
                  * can render directly into video memory, avoiding extra bandwidth cost by copying
                  * memory from core to video memory.
                  *
                  * If this call succeeds and the core renders into it,
                  * the framebuffer pointer and pitch can be passed to retro_video_refresh_t.
                  * If the buffer from GET_CURRENT_SOFTWARE_FRAMEBUFFER is to be used,
                  * the core must pass the exact
                  * same pointer as returned by GET_CURRENT_SOFTWARE_FRAMEBUFFER;
                  * i.e. passing a pointer which is offset from the
                  * buffer is undefined. The width, height and pitch parameters
                  * must also match exactly to the values obtained from GET_CURRENT_SOFTWARE_FRAMEBUFFER.
                  *
                  * It is possible for a frontend to return a different pixel format
                  * than the one used in SET_PIXEL_FORMAT. This can happen if the frontend
                  * needs to perform conversion.
                  *
                  * It is still valid for a core to render to a different buffer
                  * even if GET_CURRENT_SOFTWARE_FRAMEBUFFER succeeds.
                  *
                  * A frontend must make sure that the pointer obtained from this function is
                  * writeable (and readable).
                  */
GET_HW_RENDER_INTERFACE :: (41 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* const struct retro_hw_render_interface ** --
                  * Returns an API specific rendering interface for accessing API specific data.
                  * Not all HW rendering APIs support or need this.
                  * The contents of the returned pointer is specific to the rendering API
                  * being used. See the various headers like libretro_vulkan.h, etc.
                  *
                  * GET_HW_RENDER_INTERFACE cannot be called before context_reset has been called.
                  * Similarly, after context_destroyed callback returns,
                  * the contents of the HW_RENDER_INTERFACE are invalidated.
                  */
SET_SUPPORT_ACHIEVEMENTS :: (42 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* const bool * --
                  * If true, the libretro implementation supports achievements
                  * either via memory descriptors set with RETRO_ENVIRONMENT_SET_MEMORY_MAPS
                  * or via retro_get_memory_data/retro_get_memory_size.
                  *
                  * This must be called before the first call to retro_run.
                  */
SET_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE :: (43 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* const struct retro_hw_render_context_negotiation_interface * --
                  * Sets an interface which lets the libretro core negotiate with frontend how a context is created.
                  * The semantics of this interface depends on which API is used in SET_HW_RENDER earlier.
                  * This interface will be used when the frontend is trying to create a HW rendering context,
                  * so it will be used after SET_HW_RENDER, but before the context_reset callback.
                  */
SET_SERIALIZATION_QUIRKS :: 44;
                 /* uint64_t * --
                  * Sets quirk flags associated with serialization. The frontend will zero any flags it doesn't
                  * recognize or support. Should be set in either retro_init or retro_load_game, but not both.
                  */
SET_HW_SHARED_CONTEXT :: (44 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* N/A (null) * --
                  * The frontend will try to use a 'shared' hardware context (mostly applicable
                  * to OpenGL) when a hardware context is being set up.
                  *
                  * Returns true if the frontend supports shared hardware contexts and false
                  * if the frontend does not support shared hardware contexts.
                  *
                  * This will do nothing on its own until SET_HW_RENDER env callbacks are
                  * being used.
                  */
GET_VFS_INTERFACE :: (45 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* struct retro_vfs_interface_info * --
                  * Gets access to the VFS interface.
                  * VFS presence needs to be queried prior to load_game or any
                  * get_system/save/other_directory being called to let front end know
                  * core supports VFS before it starts handing out paths.
                  * It is recomended to do so in retro_set_environment
                  */
GET_LED_INTERFACE :: (46 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* struct retro_led_interface * --
                  * Gets an interface which is used by a libretro core to set
                  * state of LEDs.
                  */
GET_AUDIO_VIDEO_ENABLE :: (47 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* int * --
                  * Tells the core if the frontend wants audio or video.
                  * If disabled, the frontend will discard the audio or video,
                  * so the core may decide to skip generating a frame or generating audio.
                  * This is mainly used for increasing performance.
                  * Bit 0 (value 1): Enable Video
                  * Bit 1 (value 2): Enable Audio
                  * Bit 2 (value 4): Use Fast Savestates.
                  * Bit 3 (value 8): Hard Disable Audio
                  * Other bits are reserved for future use and will default to zero.
                  * If video is disabled:
                  * * The frontend wants the core to not generate any video,
                  *   including presenting frames via hardware acceleration.
                  * * The frontend's video frame callback will do nothing.
                  * * After running the frame, the video output of the next frame should be
                  *   no different than if video was enabled, and saving and loading state
                  *   should have no issues.
                  * If audio is disabled:
                  * * The frontend wants the core to not generate any audio.
                  * * The frontend's audio callbacks will do nothing.
                  * * After running the frame, the audio output of the next frame should be
                  *   no different than if audio was enabled, and saving and loading state
                  *   should have no issues.
                  * Fast Savestates:
                  * * Guaranteed to be created by the same binary that will load them.
                  * * Will not be written to or read from the disk.
                  * * Suggest that the core assumes loading state will succeed.
                  * * Suggest that the core updates its memory buffers in-place if possible.
                  * * Suggest that the core skips clearing memory.
                  * * Suggest that the core skips resetting the system.
                  * * Suggest that the core may skip validation steps.
                  * Hard Disable Audio:
                  * * Used for a secondary core when running ahead.
                  * * Indicates that the frontend will never need audio from the core.
                  * * Suggests that the core may stop synthesizing audio, but this should not
                  *   compromise emulation accuracy.
                  * * Audio output for the next frame does not matter, and the frontend will
                  *   never need an accurate audio state in the future.
                  * * State will never be saved when using Hard Disable Audio.
                  */
GET_MIDI_INTERFACE :: (48 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                 /* struct retro_midi_interface ** --
                  * Returns a MIDI interface that can be used for raw data I/O.
                  */

GET_FASTFORWARDING :: (49 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                  /* bool * --
                  * Boolean value that indicates whether or not the frontend is in
                  * fastforwarding mode.
                  */

GET_TARGET_REFRESH_RATE :: (50 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                  /* float * --
                  * Float value that lets us know what target refresh rate 
                  * is curently in use by the frontend.
                  *
                  * The core can use the returned value to set an ideal 
                  * refresh rate/framerate.
                  */

GET_INPUT_BITMASKS :: (51 | RETRO_ENVIRONMENT_EXPERIMENTAL);
                  /* bool * --
                  * Boolean value that indicates whether or not the frontend supports
                  * input bitmasks being returned by retro_input_state_t. The advantage
                  * of this is that retro_input_state_t has to be only called once to 
                  * grab all button states instead of multiple times.
                  *
                  * If it returns true, you can pass RETRO_DEVICE_ID_JOYPAD_MASK as 'id'
                  * to retro_input_state_t (make sure 'device' is set to RETRO_DEVICE_JOYPAD).
                  * It will return a bitmask of all the digital buttons.
                  */

GET_CORE_OPTIONS_VERSION :: 52;
                 /* unsigned * --
                  * Unsigned value is the API version number of the core options
                  * interface supported by the frontend. If callback return false,
                  * API version is assumed to be 0.
                  *
                  * In legacy code, core options are set by passing an array of
                  * retro_variable structs to RETRO_ENVIRONMENT_SET_VARIABLES.
                  * This may be still be done regardless of the core options
                  * interface version.
                  *
                  * If version is >= 1 however, core options may instead be set by
                  * passing an array of retro_core_option_definition structs to
                  * RETRO_ENVIRONMENT_SET_CORE_OPTIONS, or a 2D array of
                  * retro_core_option_definition structs to RETRO_ENVIRONMENT_SET_CORE_OPTIONS_INTL.
                  * This allows the core to additionally set option sublabel information
                  * and/or provide localisation support.
                  */

SET_CORE_OPTIONS :: 53;
                 /* const struct retro_core_option_definition ** --
                  * Allows an implementation to signal the environment
                  * which variables it might want to check for later using
                  * GET_VARIABLE.
                  * This allows the frontend to present these variables to
                  * a user dynamically.
                  * This should only be called if RETRO_ENVIRONMENT_GET_CORE_OPTIONS_VERSION
                  * returns an API version of >= 1.
                  * This should be called instead of RETRO_ENVIRONMENT_SET_VARIABLES.
                  * This should be called the first time as early as
                  * possible (ideally in retro_set_environment).
                  * Afterwards it may be called again for the core to communicate
                  * updated options to the frontend, but the number of core
                  * options must not change from the number in the initial call.
                  *
                  * 'data' points to an array of retro_core_option_definition structs
                  * terminated by a { NULL, NULL, NULL, {{0}}, NULL } element.
                  * retro_core_option_definition::key should be namespaced to not collide
                  * with other implementations' keys. e.g. A core called
                  * 'foo' should use keys named as 'foo_option'.
                  * retro_core_option_definition::desc should contain a human readable
                  * description of the key.
                  * retro_core_option_definition::info should contain any additional human
                  * readable information text that a typical user may need to
                  * understand the functionality of the option.
                  * retro_core_option_definition::values is an array of retro_core_option_value
                  * structs terminated by a { NULL, NULL } element.
                  * > retro_core_option_definition::values[index].value is an expected option
                  *   value.
                  * > retro_core_option_definition::values[index].label is a human readable
                  *   label used when displaying the value on screen. If NULL,
                  *   the value itself is used.
                  * retro_core_option_definition::default_value is the default core option
                  * setting. It must match one of the expected option values in the
                  * retro_core_option_definition::values array. If it does not, or the
                  * default value is NULL, the first entry in the
                  * retro_core_option_definition::values array is treated as the default.
                  *
                  * The number of possible options should be very limited,
                  * and must be less than RETRO_NUM_CORE_OPTION_VALUES_MAX.
                  * i.e. it should be feasible to cycle through options
                  * without a keyboard.
                  *
                  * Example entry:
                  * {
                  *     "foo_option",
                  *     "Speed hack coprocessor X",
                  *     "Provides increased performance at the expense of reduced accuracy",
                  * 	  {
                  *         { "false",    NULL },
                  *         { "true",     NULL },
                  *         { "unstable", "Turbo (Unstable)" },
                  *         { NULL, NULL },
                  *     },
                  *     "false"
                  * }
                  *
                  * Only strings are operated on. The possible values will
                  * generally be displayed and stored as-is by the frontend.
                  */

SET_CORE_OPTIONS_INTL :: 54;
                 /* const struct retro_core_options_intl * --
                  * Allows an implementation to signal the environment
                  * which variables it might want to check for later using
                  * GET_VARIABLE.
                  * This allows the frontend to present these variables to
                  * a user dynamically.
                  * This should only be called if RETRO_ENVIRONMENT_GET_CORE_OPTIONS_VERSION
                  * returns an API version of >= 1.
                  * This should be called instead of RETRO_ENVIRONMENT_SET_VARIABLES.
                  * This should be called the first time as early as
                  * possible (ideally in retro_set_environment).
                  * Afterwards it may be called again for the core to communicate
                  * updated options to the frontend, but the number of core
                  * options must not change from the number in the initial call.
                  *
                  * This is fundamentally the same as RETRO_ENVIRONMENT_SET_CORE_OPTIONS,
                  * with the addition of localisation support. The description of the
                  * RETRO_ENVIRONMENT_SET_CORE_OPTIONS callback should be consulted
                  * for further details.
                  *
                  * 'data' points to a retro_core_options_intl struct.
                  *
                  * retro_core_options_intl::us is a pointer to an array of
                  * retro_core_option_definition structs defining the US English
                  * core options implementation. It must point to a valid array.
                  *
                  * retro_core_options_intl::local is a pointer to an array of
                  * retro_core_option_definition structs defining core options for
                  * the current frontend language. It may be NULL (in which case
                  * retro_core_options_intl::us is used by the frontend). Any items
                  * missing from this array will be read from retro_core_options_intl::us
                  * instead.
                  *
                  * NOTE: Default core option values are always taken from the
                  * retro_core_options_intl::us array. Any default values in
                  * retro_core_options_intl::local array will be ignored.
                  */

SET_CORE_OPTIONS_DISPLAY :: 55;
                 /* struct retro_core_option_display * --
                  *
                  * Allows an implementation to signal the environment to show
                  * or hide a variable when displaying core options. This is
                  * considered a *suggestion*. The frontend is free to ignore
                  * this callback, and its implementation not considered mandatory.
                  *
                  * 'data' points to a retro_core_option_display struct
                  *
                  * retro_core_option_display::key is a variable identifier
                  * which has already been set by SET_VARIABLES/SET_CORE_OPTIONS.
                  *
                  * retro_core_option_display::visible is a boolean, specifying
                  * whether variable should be displayed
                  *
                  * Note that all core option variables will be set visible by
                  * default when calling SET_VARIABLES/SET_CORE_OPTIONS.
                  */

GET_PREFERRED_HW_RENDER :: 56;
                 /* unsigned * --
                  *
                  * Allows an implementation to ask frontend preferred hardware
                  * context to use. Core should use this information to deal
                  * with what specific context to request with SET_HW_RENDER.
                  *
                  * 'data' points to an unsigned variable
                  */

GET_DISK_CONTROL_INTERFACE_VERSION :: 57;
                 /* unsigned * --
                  * Unsigned value is the API version number of the disk control
                  * interface supported by the frontend. If callback return false,
                  * API version is assumed to be 0.
                  *
                  * In legacy code, the disk control interface is defined by passing
                  * a struct of type retro_disk_control_callback to
                  * RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE.
                  * This may be still be done regardless of the disk control
                  * interface version.
                  *
                  * If version is >= 1 however, the disk control interface may
                  * instead be defined by passing a struct of type
                  * retro_disk_control_ext_callback to
                  * RETRO_ENVIRONMENT_SET_DISK_CONTROL_EXT_INTERFACE.
                  * This allows the core to provide additional information about
                  * disk images to the frontend and/or enables extra
                  * disk control functionality by the frontend.
                  */

SET_DISK_CONTROL_EXT_INTERFACE :: 58;
                 /* const struct retro_disk_control_ext_callback * --
                  * Sets an interface which frontend can use to eject and insert
                  * disk images, and also obtain information about individual
                  * disk image files registered by the core.
                  * This is used for games which consist of multiple images and
                  * must be manually swapped out by the user (e.g. PSX, floppy disk
                  * based systems).
                  */
}

Pixel_Format :: enum u32 {
   /* 0RGB1555, native endian.
    * 0 bit must be set to 0.
    * This pixel format is default for compatibility concerns only.
    * If a 15/16-bit pixel format is desired, consider using RGB565. */
   _0RGB1555 :: 0;

   /* XRGB8888, native endian.
    * X bits are ignored. */
   XRGB8888 :: 1;

   /* RGB565, native endian.
    * This pixel format is the recommended format to use if a 15/16-bit
    * format is desired as it is the pixel format that is typically
    * available on a wide range of low-power devices.
    *
    * It is also natively supported in APIs like OpenGL ES. */
   RGB565   :: 2;
};

Game_Geometry :: struct {
   base_width: u32;    /* Nominal video width of game. */
   base_height: u32;   /* Nominal video height of game. */
   max_width: u32;     /* Maximum possible width of game. */
   max_height: u32;    /* Maximum possible height of game. */

   aspect_ratio: float;    /* Nominal aspect ratio of game. If
                            * aspect_ratio is <= 0.0, an aspect ratio
                            * of base_width / base_height is assumed.
                            * A frontend could override this setting,
                            * if desired. */
}

System_Info :: struct {
   /* All pointers are owned by libretro implementation, and pointers must 
    * remain valid until retro_deinit() is called. */

   library_name: *u8;      /* Descriptive name of library. Should not 
                           * contain any version numbers, etc. */
   library_version: *u8;   /* Descriptive version of core. */

   valid_extensions: *u8;  /* A string listing probably content 
                           * extensions the core will be able to 
                           * load, separated with pipe.
                           * I.e. "bin|rom|iso".
                           * Typically used for a GUI to filter 
                           * out extensions. */

   /* If true, retro_load_game() is guaranteed to provide a valid pathname 
    * in retro_game_info::path.
    * ::data and ::size are both invalid.
    *
    * If false, ::data and ::size are guaranteed to be valid, but ::path 
    * might not be valid.
    *
    * This is typically set to true for libretro implementations that must 
    * load from file.
    * Implementations should strive for setting this to false, as it allows 
    * the frontend to perform patching, etc. */
   need_fullpath: bool;

   /* If true, the frontend is not allowed to extract any archives before 
    * loading the real content.
    * Necessary for certain libretro implementations that load games 
    * from zipped archives. */
   block_extract: bool;
}


System_Timing :: struct {
   fps: float64;             /* FPS of video content. */
   sample_rate: float64;     /* Sampling rate of audio. */
}


System_AV_Info :: struct {
   geometry: Game_Geometry;
   timing: System_Timing;
};

Game_Info :: struct {
   path: *u8;              /* Path to game, UTF-8 encoded.
                            * Sometimes used as a reference for building other paths.
                            * May be NULL if game was loaded from stdin or similar,
                            * but in this case some cores will be unable to load `data`.
                            * So, it is preferable to fabricate something here instead
                            * of passing NULL, which will help more cores to succeed.
                            * retro_system_info::need_fullpath requires
                            * that this path is valid. */
   data: *void;            /* Memory buffer of loaded game. Will be NULL
                            * if need_fullpath was set. */
   size: int;              /* Size of memory buffer. */
   meta: *u8;              /* String of implementation specific meta-data. */
};

Core :: struct {
	handle: *void;

    init               : () #foreign;
    deinit             : () #foreign;
    api_version        : () -> u32 #foreign;
    get_system_info    : (info: *System_Info) #foreign;
	get_system_av_info : (info: *System_AV_Info) #foreign;

    load_game          : (game_info: *Game_Info) -> bool #foreign;
    run                : () #foreign;
/*
	void (*retro_set_controller_port_device)(unsigned port, unsigned device);
	void (*retro_reset)(void);
	void (*retro_run)(void);
//	size_t retro_serialize_size(void);
//	bool retro_serialize(void *data, size_t size);
//	bool retro_unserialize(const void *data, size_t size);
//	void retro_cheat_reset(void);
//	void retro_cheat_set(unsigned index, bool enabled, const char *code);
//	bool retro_load_game_special(unsigned game_type, const struct retro_game_info *info, size_t num_info);
	void (*retro_unload_game)(void);
//	unsigned retro_get_region(void);
//	void *retro_get_memory_data(unsigned id);
//	size_t retro_get_memory_size(unsigned id);
*/
}

load_and_check_sym :: (library: dynlib.Library, sym_name: *u8) -> *void {
    sym := dynlib.get_symbol(library, sym_name);
    assert(sym != null, tprint("couldn't get symbol '%'", to_string(sym_name)));
    return sym;
}

load_core_funcs :: (core: *Core, filename: string) -> success: bool {
    library := dynlib.load(filename);
    if !library {
        log_eprintln("could not load core from file '%'", filename);
        return false;
    }

    core.handle = library;

    // TODO: use reflection (or metaprogramming) to get these
    core.init               = load_and_check_sym(library, "retro_init");
    core.deinit             = load_and_check_sym(library, "retro_deinit");
    core.api_version        = load_and_check_sym(library, "retro_api_version");
    core.load_game          = load_and_check_sym(library, "retro_load_game");
    core.get_system_info    = load_and_check_sym(library, "retro_get_system_info");
    core.get_system_av_info = load_and_check_sym(library, "retro_get_system_av_info");
    core.run                = load_and_check_sym(library, "retro_run");

    return true;
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

unload_core :: (core: *Core) {
    print("TODO: unload core\n");
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
    /*
    levelstr := {:string: "dbg", "inf", "wrn", "err" };

	if level == 0 return;

    ctx: Context;
    push_context ctx {
        fmt_s := to_string(fmt);
        print("[%] %\n", levelstr[level], tprint(fmt_s, ..args));
        if level == .ERROR
            exit(EXIT_FAILURE);
    }
    */

}
