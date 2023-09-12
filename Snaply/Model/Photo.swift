//
//  Photo.swift
//  Snaply
//
//  Author: Emily Belnavis
//  Date: 2023-09-05

import Foundation
import SwiftUI
import CoreLocation

struct Photo: Hashable, Codable {
  var shotNum: Int
  var reel: String
  
  private var imageName: String = reel + String(format: "%04d", shotNum)
  var image: Image {
    
  }
  private var coordinates: CoordinateSpace
  
}
