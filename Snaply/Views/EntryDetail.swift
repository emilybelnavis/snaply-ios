//  EntryDetail.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import SwiftUI

struct EntryDetail: View {
  var entry: Entry
  
  var body: some View {
    ScrollView {
      MapView(coordinate: entry.locationCoordinates, locationName: entry.name)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      
      ImagePreview(image: entry.image)
        .offset(y: -130)
        .padding(.bottom, -130)
      
      VStack(alignment: .leading) {
        Text(entry.name)
          .font(.title)
        
        HStack {
          Text(entry.locationName)
          Spacer()
          Text("\(entry.city), \(entry.state)")
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
      }
      Divider()
    }
    .padding()
  }
}

struct EntryDetail_Previews: PreviewProvider {
  static var previews: some View {
    EntryDetail(entry: entries[0])
  }
}
