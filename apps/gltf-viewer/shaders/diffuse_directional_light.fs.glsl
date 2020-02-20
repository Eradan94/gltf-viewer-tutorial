#version 330

in vec3 vViewSpacePosition;
in vec3 vViewSpaceNormal;
in vec2 vTexCoords;

out vec3 fColor;

uniform vec3 uLightDir; // Light direction
uniform vec3 uLightIntensity; // Light intensity

void main()
{
	// Need another normalization because interpolation of vertex attributes does not maintain unit length
   	vec3 viewSpaceNormal = normalize(vViewSpaceNormal);
   	float c = 1. / 3.14;
   	fColor = vec3(c) * uLightIntensity * dot(viewSpaceNormal, uLightDir);
}