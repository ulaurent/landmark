//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Urbenson Laurent on 6/1/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                       .frame(height: 300)


            CircleImage(image: landmark.image)
                       .offset(y: -130)
                       .padding(.bottom, -130)


                   VStack(alignment: .leading) {
                       Text(landmark.name)
                           .font(.title)


                       HStack {
                           Text(landmark.park)
                           Spacer()
                           Text(landmark.state)
                       }
                       .font(.subheadline)
                       .foregroundStyle(.secondary)


                       Divider()

                       Text(landmark.description)
                           .lineLimit(nil)
                           .padding(.top)
                           .foregroundStyle(.secondary)
                   }
                   .padding()
               }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
