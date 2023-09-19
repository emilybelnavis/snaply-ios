//  EntryItem.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved

import CoreLocation
import SwiftUI
import SwiftData

@Model
final class ImageEntryItem {
  var id: String
  var entryName: String
  var imageName: String
  var locationName: String
  var city: String
  var state: String
  var timestamp: Date
  
  var isFavourite: Bool
  
  init(
    id: String = UUID().uuidString,
    entryName: String = "",
    imageName: String = "",
    locationName: String = "",
    city: String = "",
    state: String = "",
    timestamp: Date = .now,
    isFavourite: Bool = false
  ) {
    self.id = id
    self.entryName = entryName
    self.imageName = imageName
    self.locationName = locationName
    self.city = city
    self.state = state
    self.timestamp = timestamp
    self.isFavourite = isFavourite
  }
}
