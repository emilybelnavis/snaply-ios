//
//  Photo.swift
//  Snaply
//
//  Created by Samantha Emily-Rachel Belnavis on 2023-09-12.
//

import Foundation
import SwiftUI
import CoreLocation

struct Entry: Hashable, Codable, Identifiable {
  var id: String
  var name: String
  var city: String
  var state: String
  var locationName: String
  var dateTime: String
  
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  
  private var coordinates: Coordinates
  var locationCoordinates: CLLocationCoordinate2D {
    CLLocationCoordinate2D(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude
    )
  }
}


struct Coordinates: Hashable, Codable {
  var latitude: Double
  var longitude: Double
}
