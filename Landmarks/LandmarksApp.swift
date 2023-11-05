//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by CEMRE YARDIM on 16.10.2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @State private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
