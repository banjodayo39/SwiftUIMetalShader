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
