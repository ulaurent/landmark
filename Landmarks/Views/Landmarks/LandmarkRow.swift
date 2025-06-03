//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Urbenson Laurent on 6/1/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                            .resizable()
                            .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview("Turtle Rock")  {
    LandmarkRow(landmark: ModelData().landmarks[0])
}

#Preview("Salmon") {
    LandmarkRow(landmark: ModelData().landmarks[1])
}

#Preview {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
}
