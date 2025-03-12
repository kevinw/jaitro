
Light :: struct {
    direction: Vector3;
    radiance: Vector3;

    shadow_map: Framebuffer;
    projection_view_matrix: Matrix4;
}

new_Light :: () -> *Light {
    light := New(Light);
    light.shadow_map = make_framebuffer(game.shadow_map_size, game.shadow_map_size, msaa=false, color=false, depth=true);

    light.direction = .{-0.4, -0.8, -1};
    // light.radiance = make_vector3(1, 1, 1);
    light.radiance = .{0.8, 0.5, 0.2};

    return light;
}

MAX_LIGHTS :: 8; // @Volatile must match MAX_LIGHTS in textured_quad.frag

Vertex_Attribs :: struct {
    position: Vector3;
    texture_coords: Vector2;
    normal: Vector3;
}

make_vertex :: (pos: Vector3, normal: Vector3, tex: Vector2) -> Vertex_Attribs {
    v: Vertex_Attribs = ---;
    v.position = pos;
    v.normal = normal;
    v.texture_coords = tex;
    return v;
}

Material :: struct {
    diffuse: Vector3;
    roughness: float = 0.6;
    metallic: float = 0;
    diffuse_texture: *Texture;

    diffuse.x = 1;
    diffuse.y = 1;
    diffuse.z = 1;
}

Mesh :: struct {
    model_matrix: Matrix4;
    vertices: [..] Vertex_Attribs;
    buffer_id: GLuint;
    is_dirty := true;
    material: *Material;

    model_matrix._11 = 1;
    model_matrix._22 = 1;
    model_matrix._33 = 1;
    model_matrix._44 = 1;
}

ATTRIB_POSITION  :: 0;
ATTRIB_TEXCOORDS :: 1;
ATTRIB_COLOR     :: 2;
ATTRIB_NORMAL    :: 3;

make_scale_matrix :: (v: Vector3) -> Matrix4 {
    m: Matrix4;
    m._11 = v.x;
    m._22 = v.y;
    m._33 = v.z;
    m._44 = 1;
    return m;
}

Quad :: struct {
    x0, y0: float;
    x1, y1: float;
}

make_Quad :: (x: float, y: float, width: float, height: float) -> Quad {
    q: Quad = ---;
    q.x0 = x;
    q.y0 = y;
    q.x1 = x + width;
    q.y1 = y + height;
    return q;
}

add_quad :: (arr: *[..] $T, v0: T, v1: T, v2: T, v3: T) {
    array_add(arr, v0);
    array_add(arr, v1);
    array_add(arr, v2);
    
    array_add(arr, v2);
    array_add(arr, v3);
    array_add(arr, v0);
}

set_quad :: (arr: [] $T, v0: T, v1: T, v2: T, v3: T) {
    assert(arr.count >= 6);
    arr[0] = v0;
    arr[1] = v1;
    arr[2] = v2;
    
    arr[3] = v2;
    arr[4] = v3;
    arr[5] = v0;
}

Vertex :: struct {
    x, y: float;
    u, v: float;
}

make_Vertex :: (x: float, y: float, u: float, v: float) -> Vertex {
    vtx: Vertex = ---;
    vtx.x = x;
    vtx.y = y;
    vtx.u = u;
    vtx.v = v;
    return vtx;
}


draw_quad :: (q: Quad, color: Vector4) {
    shader := game.untextured_quad_shader;

    identity_mat: Matrix4;
    identity(*identity_mat);

    use_shader_and_update_matrices(shader, identity_mat);
    apply_material(shader, null);
    
    tex := q; // @Hack because I'm too lazy to remove the tex.* stuff
    
    V :: make_Vertex;
    
    v0 := V(q.x0, q.y0, tex.x0, tex.y0);
    v1 := V(q.x1, q.y0, tex.x1, tex.y0);
    v2 := V(q.x1, q.y1, tex.x1, tex.y1);
    v3 := V(q.x0, q.y1, tex.x0, tex.y1);
    
    vertices: [6] Vertex;
    slice: [] Vertex = vertices;
    set_quad(slice, v0, v1, v2, v3);

    glBindBuffer(GL_ARRAY_BUFFER, game.immediate_draw_buffer_id);
    glBufferData(GL_ARRAY_BUFFER, size_of(Vertex)*vertices.count, vertices.data, GL_DYNAMIC_DRAW);
    
    glEnableVertexAttribArray(ATTRIB_POSITION);
    defer glDisableVertexAttribArray(ATTRIB_POSITION);

    glVertexAttribPointer(ATTRIB_POSITION, 2, GL_FLOAT, false, size_of(Vertex), null);
    glVertexAttrib4f(ATTRIB_COLOR, color.x, color.y, color.z, color.w);
    glVertexAttrib3f(ATTRIB_NORMAL, 0, 0, 0);
    glDrawArrays(GL_TRIANGLES, 0, xx vertices.count);
}

draw_unlit_quad :: (q: Quad, tex: Quad, texture: u32) {
    shader := game.unlit_shader;
    glUseProgram(shader);

    uni_texture := glGetUniformLocation(shader, "diffuse_texture");
    glUniform1i(uni_texture, 0);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, texture);
    
    V :: make_Vertex;
    
    v0 := V(q.x0, q.y0, tex.x0, tex.y0);
    v1 := V(q.x1, q.y0, tex.x1, tex.y0);
    v2 := V(q.x1, q.y1, tex.x1, tex.y1);
    v3 := V(q.x0, q.y1, tex.x0, tex.y1);
    
    vertices: [6] Vertex;
    slice: [] Vertex = vertices;
    set_quad(slice, v0, v1, v2, v3);
    
    glBindBuffer(GL_ARRAY_BUFFER, game.immediate_draw_buffer_id);
    glBufferData(GL_ARRAY_BUFFER, size_of(Vertex)*vertices.count, vertices.data, GL_DYNAMIC_DRAW);
    
    glEnableVertexAttribArray(ATTRIB_POSITION);
    defer glDisableVertexAttribArray(ATTRIB_POSITION);
    glEnableVertexAttribArray(ATTRIB_TEXCOORDS);
    defer glDisableVertexAttribArray(ATTRIB_TEXCOORDS);

    glVertexAttribPointer(ATTRIB_POSITION, 2, GL_FLOAT, false, size_of(Vertex), null);
    glVertexAttribPointer(ATTRIB_TEXCOORDS, 2, GL_FLOAT, false, size_of(Vertex), cast(*void) (size_of(float)*2));
    glDrawArrays(GL_TRIANGLES, 0, xx vertices.count);
    assert(glGetError() == GL_NO_ERROR);
}

draw_textured_quad :: (q: Quad, texture: u32) {
    shader := game.textured_quad_shader;
    use_shader_and_update_matrices(shader, Matrix4_Identity);
    apply_material(shader, null);

    glBindTexture(GL_TEXTURE_2D, texture);

    uni_texture := glGetUniformLocation(shader, "the_material.diffuse_texture");
    glUniform1i(uni_texture, 0);
    use_texture := glGetUniformLocation(shader, "the_material.enable_diffuse_texture");
    glUniform1i(use_texture, 1);
    
    tex := make_Quad(0, 0, 1, 1);
    
    V :: make_Vertex;
    
    v0 := V(q.x0, q.y0, tex.x0, tex.y0);
    v1 := V(q.x1, q.y0, tex.x1, tex.y0);
    v2 := V(q.x1, q.y1, tex.x1, tex.y1);
    v3 := V(q.x0, q.y1, tex.x0, tex.y1);
    
    vertices: [6] Vertex;
    slice: [] Vertex = vertices;
    set_quad(slice, v0, v1, v2, v3);
    
    glBindBuffer(GL_ARRAY_BUFFER, game.immediate_draw_buffer_id);
    glBufferData(GL_ARRAY_BUFFER, size_of(Vertex)*vertices.count, vertices.data, GL_DYNAMIC_DRAW);
    
    glEnableVertexAttribArray(ATTRIB_POSITION);
    defer glDisableVertexAttribArray(ATTRIB_POSITION);
    glEnableVertexAttribArray(ATTRIB_TEXCOORDS);
    defer glDisableVertexAttribArray(ATTRIB_TEXCOORDS);

    glVertexAttribPointer(ATTRIB_POSITION, 2, GL_FLOAT, false, size_of(Vertex), null);
    glVertexAttribPointer(ATTRIB_TEXCOORDS, 2, GL_FLOAT, false, size_of(Vertex), cast(*void) (size_of(float)*2));
    glVertexAttrib4f(ATTRIB_COLOR, 1.0, 1.0, 1.0, 1.0);
    glVertexAttrib3f(ATTRIB_NORMAL, 0, 0, 0);
    glDrawArrays(GL_TRIANGLES, 0, xx vertices.count);
}

draw_text :: (font: *Dynamic_Font, color: Vector4, x: int, y: int, fmt: string, args: .. Any) {
    assert(font != null);
    builder: String_Builder;
    print_to_builder(*builder, fmt, ..args);
    text := builder_to_string(*builder);
    defer free(text);

    shader := game.textured_quad_shader;
    use_shader_and_update_matrices(shader, Matrix4_Identity);
    apply_material(shader, null);

    prep_text(font, x, y, make_vector4(1, 1, 1, 1), text);

    vertices: [..] Vertex;
    defer array_reset(*vertices);

    for font.current_quads {
        V :: make_Vertex;

        v0 := V(it.x0, it.y0, it.u0, it.v0);
        v1 := V(it.x1, it.y0, it.u1, it.v0);
        v2 := V(it.x1, it.y1, it.u1, it.v1);
        v3 := V(it.x0, it.y1, it.u0, it.v1);
        add_quad(*vertices, v0, v1, v2, v3);

        if (it.map && it.map.platform_specific.gl_handle) {
            // @TODO what if the set of quads uses multiple texture maps?
            glActiveTexture(GL_TEXTURE0);
            glBindTexture(GL_TEXTURE_2D, it.map.platform_specific.gl_handle);

            uni_texture := glGetUniformLocation(shader, "the_material.diffuse_texture");
            glUniform1i(uni_texture, 0);
            use_texture := glGetUniformLocation(shader, "the_material.enable_diffuse_texture");
            glUniform1i(use_texture, 1);
        }
    }

    glBindBuffer(GL_ARRAY_BUFFER, game.immediate_draw_buffer_id);
    glBufferData(GL_ARRAY_BUFFER, size_of(Vertex)*vertices.count, vertices.data, GL_DYNAMIC_DRAW);

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    defer glDisable(GL_BLEND);

    glEnableVertexAttribArray(ATTRIB_POSITION);
    defer glDisableVertexAttribArray(ATTRIB_POSITION);
    glEnableVertexAttribArray(ATTRIB_TEXCOORDS);
    defer glDisableVertexAttribArray(ATTRIB_TEXCOORDS);

    glVertexAttribPointer(ATTRIB_POSITION, 2, GL_FLOAT, false, size_of(Vertex), null);
    glVertexAttribPointer(ATTRIB_TEXCOORDS, 2, GL_FLOAT, false, size_of(Vertex), cast(*void) (size_of(float)*2));
    glVertexAttrib4f(ATTRIB_COLOR, color.x, color.y, color.z, color.w);
    glVertexAttrib3f(ATTRIB_NORMAL, 0, 0, 0);
    glDrawArrays(GL_TRIANGLES, 0, xx vertices.count);

}

uniloc :: (shader: GLuint, str: string) -> s32 {
    c_str := temp_c_string(str);
    return glGetUniformLocation(shader, c_str);
}

apply_material :: (shader: GLuint, mat: *Material) {
    dummy: Material;
    if !mat {
        mat = *dummy;
    }

    glUniform1i(uniloc(shader, "the_material.enable_diffuse_texture"), 0);

    glUniform4f(uniloc(shader, "the_material.BaseColor"), mat.diffuse.x, mat.diffuse.y, mat.diffuse.z, 1);
    glUniform1f(uniloc(shader, "the_material.Roughness"), mat.roughness);
    glUniform1f(uniloc(shader, "the_material.Metallic"), mat.metallic);

    if mat.diffuse_texture {
        glUniform1i(uniloc(shader, "the_material.enable_diffuse_texture"), 1);
        glUniform1i(uniloc(shader, "the_material.diffuse_texture"), 0);

        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_2D, mat.diffuse_texture.specific.gl_handle);
    } else {
        glActiveTexture(GL_TEXTURE0);

    }
}

use_shader_and_update_matrices :: (shader: GLuint, model: Matrix4) {
    glUseProgram(shader);
    
    projection_loc := glGetUniformLocation(shader, "projection");
    model_loc := glGetUniformLocation(shader, "model");
    view_loc := glGetUniformLocation(shader, "view");
    
    glUniformMatrix4fv(projection_loc, 1, true, cast(*float) *game.projection);
    glUniformMatrix4fv(model_loc, 1, true, cast(*float) *model);
    glUniformMatrix4fv(view_loc, 1, true, cast(*float) *game.view);

    num_lights := min(game.lights.count, MAX_LIGHTS);
    for 0..num_lights-1 {
        radiance := game.lights[it].radiance;
        direction := game.lights[it].direction;
        glUniform3f(uniloc(shader, tprint("lights[%].direction", it)), direction.x, direction.y, direction.z);
        glUniform3f(uniloc(shader, tprint("lights[%].radiance", it)), radiance.x, radiance.y, radiance.z);

        shadow_map := *game.lights[it].shadow_map;
        matrix := *game.lights[it].projection_view_matrix;

        if shadow_map.depth_texture != 0 {
            glActiveTexture(GL_TEXTURE3);
            glBindTexture(GL_TEXTURE_2D, shadow_map.depth_texture);
            glUniform1i(uniloc(shader, tprint("lights[%].shadow_map", it)), 3);
            glUniform1i(uniloc(shader, tprint("lights[%].use_shadow_map", it)), 1);
            glUniform1f(uniloc(shader, tprint("lights[%].shadow_map_size", it)), cast(float) shadow_map.width); // width/height should always be the same here

            glUniformMatrix4fv(uniloc(shader, tprint("lights[%].projection_view_matrix", it)), 1, true, cast(*float) matrix);
            glActiveTexture(GL_TEXTURE0);
        } else {
            glUniform1i(uniloc(shader, tprint("lights[%].use_shadow_map", it)), 0);
        }
    }

    position := Vector3.{0, 0, 0};
    glUniform3f(uniloc(shader, "camera.position"), position.x, position.y, position.z);
    glUniform1i(uniloc(shader, "num_lights"), cast(s32) num_lights);
}

compile_shader_source :: (vertex: string, pixel: string) -> u32 {
    vert := compile_shader(GL_VERTEX_SHADER, vertex);
    frag := compile_shader(GL_FRAGMENT_SHADER, pixel);
    program := glCreateProgram();
    glAttachShader(program, vert);
    glAttachShader(program, frag);
    glLinkProgram(program);
    
    status: GLint;
    glGetProgramiv(program, GL_LINK_STATUS, *status);
    if (status == 0) {
        len: GLint;
        glGetProgramiv(program, GL_INFO_LOG_LENGTH, *len);
        buf := cast(*u8) alloc(len);
        glGetProgramInfoLog(program, xx len, xx *len, buf);
        print("ERROR: %\n", to_string(buf));
        free(buf);
        
        glDeleteProgram(program);
        glDeleteShader(vert);
        glDeleteShader(frag);
        return 0;
    }
    
    glDetachShader(program, vert);
    glDetachShader(program, frag);

    glValidateProgram(program);
    
    return program;
}

compile_shader :: (type: GLenum, source: string) -> u32 {
    v := glCreateShader(type);
    length: GLint = xx source.count;
    glShaderSource(v, 1, *source.data, *length);
    glCompileShader(v);
    
    status: GLint;
    glGetShaderiv(v, GL_COMPILE_STATUS, *status);
    if (status == 0) {
        len: GLint;
        glGetShaderiv(v, GL_INFO_LOG_LENGTH, *len);
        buf := cast(*u8) alloc(len);
        glGetShaderInfoLog(v, xx len, xx *len, buf);
        print("ERROR: %\n", to_string(buf));
        free(buf);
        
        glDeleteShader(v);
        return 0;
    }
    
    return v;
}

Framebuffer :: struct {
    id: u32;
    width: s32;
    height: s32;

    msaa: bool;
    color: bool;
    depth: bool;

    color_texture: u32;
    depth_texture: u32;
}

make_framebuffer :: (width: s32, height: s32, msaa := true, color := true, depth := true) -> Framebuffer {
    fbo: Framebuffer;
    fbo.width = width;
    fbo.height = height;
    fbo.msaa = msaa;
    fbo.color = color;
    fbo.depth = depth;
    glGenFramebuffers(1, *fbo.id);
    glGenTextures(1, *fbo.color_texture);
    glGenTextures(1, *fbo.depth_texture);

    glBindFramebuffer(GL_FRAMEBUFFER, fbo.id);

    if color {
        attach: [1] u32 = .[ GL_COLOR_ATTACHMENT0 ];
        glDrawBuffers(xx attach.count, attach.data);
    }

    resize_buffer(*fbo, width, height);
    
    if msaa {
        if color then glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D_MULTISAMPLE, fbo.color_texture, 0);
        
        if depth {
            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_TEXTURE_2D_MULTISAMPLE, fbo.depth_texture, 0);
            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_TEXTURE_2D_MULTISAMPLE, fbo.depth_texture, 0);
        }
    } else {
        if color then glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, fbo.color_texture, 0);

        if depth {
            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_TEXTURE_2D, fbo.depth_texture, 0);
            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_TEXTURE_2D, fbo.depth_texture, 0);
        }
    }
    
    assert(glCheckFramebufferStatus(GL_FRAMEBUFFER) == GL_FRAMEBUFFER_COMPLETE);

    use_frame_buffer(null);
    return fbo;
}

resize_buffer :: (fbo: *Framebuffer, width: s32, height: s32) {
    if fbo.msaa {
        MSAA_SAMPLES :: 2;

        if fbo.color {
            glBindTexture(GL_TEXTURE_2D_MULTISAMPLE, fbo.color_texture);
            glTexImage2DMultisample(GL_TEXTURE_2D_MULTISAMPLE, MSAA_SAMPLES, GL_RGBA8, cast(u32) width, cast(u32) height, false);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR); // Linear Filtering
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR); // Linear Filtering
        }

        if fbo.depth {
            glBindTexture(GL_TEXTURE_2D_MULTISAMPLE, fbo.depth_texture);
            glTexImage2DMultisample(GL_TEXTURE_2D_MULTISAMPLE, MSAA_SAMPLES, GL_DEPTH24_STENCIL8, cast(u32) width, cast(u32) height, false);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR); // Linear Filtering
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR); // Linear Filtering
        }
    } else {
        if fbo.color {
            glBindTexture(GL_TEXTURE_2D, fbo.color_texture);
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, cast(u32) width, cast(u32) height, 0, GL_RGBA, GL_UNSIGNED_BYTE, null);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR); // Linear Filtering
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR); // Linear Filtering
        }

        if fbo.depth {
            glBindTexture(GL_TEXTURE_2D, fbo.depth_texture);
            glTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH24_STENCIL8, cast(u32) width, cast(u32) height, 0, GL_DEPTH_STENCIL, GL_UNSIGNED_INT_24_8, null);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR); // Linear Filtering
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR); // Linear Filtering
        }
    }

    fbo.width = width;
    fbo.height = height;
}

get_framebuffer_dimensions :: (fb: *Framebuffer) -> (width: s32, height: s32) {
    if !fb {
        #if OS == .MACOS {
            Objective_C :: #import "Objective_C";
            #import "Objective_C/AppKit";
            ctx := NSOpenGLContext.currentContext();
            view := ctx.view(ctx);

            frame := NSView.frame(view);
            fb := NSView.convertRectToBacking(view, frame);
            return cast(s32) fb.size.width, cast(s32) fb.size.height;
        } else {
            return game.window_width, game.window_height;
        }
    }

    return fb.width, fb.height;
}

use_frame_buffer :: (fb: *Framebuffer) {
    width, height := get_framebuffer_dimensions(fb);
    if !fb {
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
    } else {
        glBindFramebuffer(GL_FRAMEBUFFER, fb.id);
    }

    
    glViewport(0, 0, cast(u32) width, cast(u32) height);
}

