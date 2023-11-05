//
//  MapView.swift
//  Landmarks
//
//  Created by CEMRE YARDIM on 16.10.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
  var coordinate: CLLocationCoordinate2D
  
  var body: some View {
    Map(coordinateRegion: .constant(MKCoordinateRegion(
      center: coordinate,
      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )))
  }
  
  
}

//#Preview {
//  MapView()
//}
