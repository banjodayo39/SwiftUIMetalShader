//
//  GreenMountainView.swift
//  SwiftUIMetalShader
//
//  Created by Dayo Banjo on 7/3/23.
//

import SwiftUI

struct GreenMountainView: View {
    let startDate = Date()

    var body: some View {
        VStack {
            TimelineView(.animation) { context in
                let elapsedTime = Date().timeIntervalSince(startDate)
                let time = fmod(elapsedTime, 10) 

                Image("img-green-mountain")
                    .resizable()
                    .frame(width: 200,
                           height: 200)
                    .cornerRadius(8)
                    .layerEffect(ShaderLibrary.pixellate(.float(time)), maxSampleOffset: .zero)

                   }
            Text("Pixellate")
        }
        .padding()
    }
}

#Preview {
    GreenMountainView()
}
