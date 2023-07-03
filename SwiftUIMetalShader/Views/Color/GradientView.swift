//
//  GradientView.swift
//  SwiftUIMetalShader
//
//  Created by Dayo Banjo on 7/3/23.
//

import SwiftUI

struct GradientViewUI: View {
    
    static let gradientStart = Color.yellow
    static let gradientEnd = Color.black
    let startDate = Date()
    
    var body: some View {
        TimelineView(.animation) { _ in 
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(LinearGradient(
                        gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                        startPoint: .init(x: 0.5, y: 0),
                        endPoint: .init(x: 0.5, y: 0.6)
                    ))
                    .frame(width: 300, height: 200)
                    .colorEffect(ShaderLibrary.checkerboard(.float(10), .color(.red), .float(startDate.timeIntervalSinceNow)))
            }
            .padding()
        }
    }
}

#Preview {
   GradientViewUI()
}
