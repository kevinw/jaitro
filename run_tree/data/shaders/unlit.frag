#version 330 core

in vec2 texture_coords;
in vec3 ws_frag_position;

out vec4 out_frag_color;

uniform sampler2D main_tex;

void main() {
    out_frag_color = texture(main_tex, texture_coords);
}
