//
//  LandmarkList.swift
//  Landmarks
//
//  Created by agumy on 2021/05/03.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavotiresOnly = true
    
    var filterdLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavotiresOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List(filterdLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
