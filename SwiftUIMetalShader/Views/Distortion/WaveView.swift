//
//  WaveView.swift
//  SwiftUIMetalShader
//
//  Created by Dayo Banjo on 7/3/23.
//

import SwiftUI

struct WaveView: View {
    let startDate = Date()

    var body: some View {
        VStack {
            TimelineView(.animation) { context in
                Image("img-green-mountain")
                    .resizable()
                    .frame(width: 200,
                           height: 200)
                    .cornerRadius(8)
                           .visualEffect { content, proxy in
                               content
                                   .distortionEffect(ShaderLibrary.complexWave(
                                       .float(startDate.timeIntervalSinceNow),
                                       .float2(proxy.size),
                                       .float(0.2),
                                       .float(6),
                                       .float(8)
                                   ), maxSampleOffset: .zero)
                           }
                   }
            TimelineView(.animation) { _ in
                Image("img-summer-water")
                    .resizable()
                    .frame(width: 200,
                           height: 200)
                    .cornerRadius(8)
                    .distortionEffect(ShaderLibrary.wave(.float(startDate.timeIntervalSinceNow)), maxSampleOffset: .zero)
                
            }
            Text("Wave")
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    WaveView()
}
