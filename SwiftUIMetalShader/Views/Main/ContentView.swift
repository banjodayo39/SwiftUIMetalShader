//
//  ContentView.swift
//  SwiftUIMetalShader
//
//  Created by Dayo Banjo on 7/3/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.navigationLinks, id: \.title) { link in
                    navigationLink(for: link.view, withTitle: link.title)
                }
            }.navigationTitle("SwiftUI Metal Shader")
             .navigationBarTitleDisplayMode(.large)
        }
    }
    
    @ViewBuilder
    private func navigationLink<V: View>(for view: V, withTitle title: String) -> some View {
        NavigationLink(destination: view.navigationTitle(title)) {
            Text(title)
        }
    }
}

#Preview {
    ContentView()
}
