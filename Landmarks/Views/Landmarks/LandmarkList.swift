//
//  LandmarkList.swift
//  Landmarks
//
//  Created by CEMRE YARDIM on 16.10.2023.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false
  
  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter { landmark in
      (!showFavoritesOnly || landmark.isFavorite)
    }
  }
  
  var body: some View {
    NavigationSplitView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorites Only")
        }
        
        ForEach(filteredLandmarks) { landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .navigationTitle("Landmarks")
    } detail: { // iPad compatibility
      Text("select a landmark")
    }
  }
}

#Preview {
  LandmarkList()
}
