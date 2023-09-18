//  EntryRow.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import SwiftUI

struct EntryRow: View {
  var entry: Entry
  
  var body: some View {
    HStack {
      entry.image
        .resizable()
        .frame(width: 64, height: 64)
      
      VStack(alignment: .leading) {
        Text(entry.name)
        Text(entry.locationName)
          .font(.subheadline)
          .foregroundColor(.secondary)
      }
    }
  }
}

struct EntryRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      EntryRow(entry: entries[0])
    }
  }
}
