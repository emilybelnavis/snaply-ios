//  AddEntry.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import SwiftUI

struct AddImageEntry: View {
  @Environment(\.dismiss) var dismiss
  @Environment(\.modelContext) var context
  
  @State private var entry = ImageEntryItem()
  
  var body: some View {
    List {
      Section {
        TextField("Entry Name", text: $entry.entryName)
        TextField("Location Name", text: $entry.locationName)
        DatePicker("Timestamp", selection: $entry.timestamp)
      }
      Button("Add to Log") {
        withAnimation {
          context.insert(entry)
        }
        dismiss()
      }
    }
    .navigationTitle("New Photo Log Entry")
  }
}

#Preview {
  AddImageEntry()
    .modelContainer(for: ImageEntryItem.self)
}
