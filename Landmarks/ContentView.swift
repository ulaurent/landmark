//
//  ContentView.swift
//  Landmarks
//
//  Created by Urbenson Laurent on 5/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .cornerRadius(8)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(Color.black)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("A natural rock formation resembling a turtle, Turtle Rock is a popular spot for hikers and photographers.")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
        }
        .padding()
        Spacer()

    }
}

#Preview {
    ContentView()
}
