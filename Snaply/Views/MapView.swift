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
  var coordinate: CLLocationCoordinate2D
  
  @State private var region = MKCoordinateRegion()
  
  var body: some View {
    Map(coordinateRegion: $region)
      .onAppear {
        setRegion(coordinate)
      }
  }
  
  private func setRegion(_ coordinate: CLLocationCoordinate2D) {
    region = MKCoordinateRegion(
      center: coordinate,
      span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 43.650_812, longitude: -79.357_136))
  }
}
