#version 140
#extension GL_ARB_explicit_attrib_location : require
#define M_PI 3.1415926535897932384626433832795

layout (location = 0) in vec3 a_vertex;
layout (location = 1) in vec3 a_normal;

out vec3 g_vertex;
out vec3 g_normal;

void main()
{
    vec4 v =  vec4(a_vertex, 1.0);
    g_vertex = v.xyz/v.w;
    g_normal = a_normal;
    gl_Position =  v;
}
