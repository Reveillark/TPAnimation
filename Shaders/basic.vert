#version 140
#extension GL_ARB_explicit_attrib_location : require
#define M_PI 3.1415926535897932384626433832795

layout (location = 0) in vec3 a_vertex;
layout (location = 1) in vec3 a_normal;
layout (location = 2) in float weight0;
layout (location = 3) in float weight1;

uniform mat4 transform;
uniform mat4 mobileRot;
uniform mat4 fixedRot;
uniform mat4 mobilePos;
uniform mat4 fixedPos;

out vec3 g_vertex;
out vec3 g_normal;

float angle = M_PI/4;

void main()
{
    vec4 v =  transform *vec4(a_vertex, 1.0);
    mat4 id = mat4(1,0,0,0,
		   0,1,0,0,
		   0,0,1,0,
		   0,0,0,1);
    //mat3 rotz = mat3(cos(angle), sin(angle), 0.0,
//		-sin(angle), cos(angle), 0.0,
//		0.0, 0.0, 1.0);
    v.xyzw = mobileRot * weight1 * v.xyzw + fixedRot * weight0 * v.xyzw;
    g_vertex = v.xyz/v.w;
    g_normal = a_normal;
    gl_Position =  v;
}
