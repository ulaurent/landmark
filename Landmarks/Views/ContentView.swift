//
//  ContentView.swift
//  Landmarks
//
//  Created by Urbenson Laurent on 5/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
