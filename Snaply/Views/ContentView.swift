//  ContentView.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import SwiftUI
import SwiftData

struct ContentView: View {
  
  var body: some View {
    EntryList()
      .modelContainer(for: ImageEntryItem.self)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
