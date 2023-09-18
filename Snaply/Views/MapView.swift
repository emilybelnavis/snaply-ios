//  MapView.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
  var coordinate: CLLocationCoordinate2D
  var locationName: String
  
  var body: some View {
    Map(bounds: MapCameraBounds( minimumDistance: 250, maximumDistance: 250)) {
      Marker(locationName, coordinate: coordinate)
    }
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 43.650_812, longitude: -79.357_136), locationName: "Photo Location")
  }
}
