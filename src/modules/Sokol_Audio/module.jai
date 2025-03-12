#if OS == .WINDOWS {
    saudio_lib :: #library,no_dll "win/sokol_audio";
} 
#if OS == .MACOS {
    saudio_lib :: #library,no_dll "mac/sokol_audio";
}

/* setup sokol-audio */
setup :: (desc: *Desc) #foreign saudio_lib "saudio_setup";
/* shutdown sokol-audio */
shutdown :: () #foreign saudio_lib "saudio_shutdown";
/* true after setup if audio backend was successfully initialized */
isvalid:: () -> bool #foreign saudio_lib "saudio_isvalid";
/* return the saudio_desc.user_data pointer */
userdata :: () -> *void #foreign saudio_lib "saudio_userdata";
/* return a copy of the original saudio_desc struct */
query_desc :: () -> Desc #foreign saudio_lib "saudio_query_desc";
/* actual sample rate */
sample_rate :: () -> s32 #foreign saudio_lib "saudio_sample_rate";
/* return actual backend buffer size in number of frames */
buffer_frames :: () -> s32 #foreign saudio_lib "saudio_buffer_frames";
/* actual number of channels */
channels :: () -> s32 #foreign saudio_lib "saudio_channels";
/* get current number of frames to fill packet queue */
expect :: () -> s32 #foreign saudio_lib "saudio_expect";
/* push sample frames from main thread, returns number of frames actually pushed */
push :: (frames: *float, num_frames: s32) -> s32 #foreign saudio_lib "saudio_push";

Desc :: struct {
    sample_rate: s32;        /* requested sample rate */
    num_channels: s32;       /* number of channels, default: 1 (mono) */
    buffer_frames: s32;      /* number of frames in streaming buffer */
    packet_frames: s32;      /* number of frames in a packet */
    num_packets: s32;        /* number of packets in packet queue */
    stream_cb: #type (buffer: *float, num_frames: s32, num_channels: s32) #c_call; /* optional streaming callback (no user data) */
    stream_userdata_cb: #type (buffer: *float, num_frames: s32, num_channels: s32, user_data: *void) #c_call; /*... and with user data */
    user_data: *void;        /* optional user data argument for stream_userdata_cb */
}