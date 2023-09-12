//
//  MapView.swift
//  Snaply
//
//  Created by Samantha Emily-Rachel Belnavis on 2023-09-12.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 43.650_812, longitude: -79.357_136),
    span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
  )
  
  var body: some View {
    Map(coordinateRegion: $region)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
