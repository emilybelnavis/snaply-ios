//
//  PhotoRow.swift
//  Snaply
//
//  Created by Samantha Emily-Rachel Belnavis on 2023-09-12.
//

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
