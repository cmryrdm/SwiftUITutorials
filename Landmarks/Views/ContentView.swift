//
//  ContentView.swift
//  Landmarks
//
//  Created by CEMRE YARDIM on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    LandmarkList()
  }
}

#Preview {
  ContentView().environmentObject(ModelData())
}
