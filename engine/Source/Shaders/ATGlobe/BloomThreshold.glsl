precision mediump float;

uniform sampler2D colorTexture;
uniform float threshold;

in vec2 v_textureCoordinates;
out vec4 FragColor;

void main(void)
{
    vec3 rgb = texture(colorTexture, v_textureCoordinates).rgb;
    float brightness = dot(rgb, vec3(0.2126, 0.7152, 0.0722));
    if (brightness > threshold)
        FragColor = vec4(rgb, 1.0);
    else
        FragColor = vec4(0.0, 0.0, 0.0, 1.0);
}
