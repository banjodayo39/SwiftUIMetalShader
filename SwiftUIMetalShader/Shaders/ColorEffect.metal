//
//  ColorEffect.metal
//  SwiftUIMetalShader
//
//  Created by Dayo Banjo on 7/3/23.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 checkerboard(float2 position, half4 currentColor, float size, half4 newColor,  float time) {
    uint2 posInChecks = uint2(position.x / size, position.y / size);
    bool isColor = (posInChecks.x ^ posInChecks.y) & 1;
    return isColor ? currentColor :  newColor * currentColor.a * sin(time);
}

float3 pal(float t, float3 a, float3 b, float3 c, float3 d) {
    return a + b * cos(6.28318 * (c * t + d));
}

[[ stitchable ]] half4 pallete( float2 position, half4 currentColor, float size, float time)
{
    uint2 posInChecks = uint2(position.x / size, position.y / size);
    bool isColor = posInChecks.y & 1;
    half3 newColor = 0.5 + 0.5 * cos(time + half3(0, 1, 0.4));
    return  isColor ? sin(0.25-currentColor*time) : half4(newColor, 1);
}
