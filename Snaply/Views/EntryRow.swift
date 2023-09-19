//  EntryRow.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import SwiftUI

struct EntryRow: View {
  @Environment(\.modelContext) var context
  @State private var imageEntryEdit: ImageEntryItem?
  
  var entry: ImageEntryItem
  
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(entry.entryName)
          .font(.largeTitle)
        Text(entry.locationName)
          .font(.title)
          .foregroundColor(.secondary)
        Text("\(entry.timestamp, format: Date.FormatStyle(date: .abbreviated, time: .standard, locale: .autoupdatingCurrent, calendar: .autoupdatingCurrent, timeZone: .autoupdatingCurrent))")
      }
    }
    .swipeActions {
      // Swipe buttons are populated from right to left!
      Button(role: .destructive) {
        withAnimation {
          context.delete(entry)
        }
      } label: {
        Label("Delete", systemImage: "trash")
          .symbolVariant(.fill)
      }
      Button {
        imageEntryEdit = entry
      } label:  {
        Label("Edit", systemImage: "pencil")
      }.tint(.blue)
    }
    .sheet(item: $imageEntryEdit) {
      imageEntryEdit = nil
    } content: { entry in
        UpdateImageEntry(imageEntry: entry)
    }
  }
}

#Preview {
  EntryRow(entry: ImageEntryItem())
}
