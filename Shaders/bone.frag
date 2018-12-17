#version 140
#extension GL_ARB_explicit_attrib_location : require

layout (location = 0) out vec4 fragColor;

in vec3 g_vertex;
in vec3 g_normal;

void main()
{	
	fragColor = vec4(1.0, 0.0, 1.0, 1.0);
}
