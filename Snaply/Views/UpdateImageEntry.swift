//  UpdateImageEntry.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import SwiftUI
import SwiftData

struct UpdateImageEntry: View {
  @Environment(\.dismiss) var dismiss
  
  @Bindable var imageEntry: ImageEntryItem
  
  var body: some View {
    List {
      Section {
        TextField("Entry Name", text: $imageEntry.entryName)
        TextField("Location Name", text: $imageEntry.locationName)
        DatePicker("Timestamp", selection: $imageEntry.timestamp)
      }
      Button("Update Entry") {
        dismiss()
      }
    }
    .navigationTitle("Update Photo Entry")
  }
}
