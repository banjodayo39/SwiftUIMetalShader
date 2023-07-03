//
//  Wave.metal
//  SwiftUIMetalShader
//
//  Created by Dayo Banjo on 7/3/23.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 wave(float2 position, float time) {
    return position + float2(0, sin(time * 2 + position.x / 15)) * 5;
}

[[ stitchable ]] float2 complexWave(float2 position, float time, float2 size, float speed, float strength, float frequency) {
    float2 normalizedPosition = position / size;
    float moveAmount = time * speed;

    position.x += sin((normalizedPosition.x + moveAmount) * frequency) * strength;
    position.y += cos((normalizedPosition.y + moveAmount) * frequency) * strength;

    return position;
}
