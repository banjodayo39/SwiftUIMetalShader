//
//  ContentViewModel.swift
//  SwiftUIMetalShader
//
//  Created by Dayo Banjo on 7/3/23.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    
    var navigationLinks: [(view: AnyView, title: String)] {
        [
            (view: AnyView(WaveView()), title: "Wave"),
            (view: AnyView(GradientViewUI()), title: "Gradient")
        ]
    }
}
