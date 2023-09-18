//
//  EntryList.swift
//  Snaply
//
//  Created by Samantha Emily-Rachel Belnavis on 2023-09-12.
//

import Foundation
import SwiftUI

struct EntryList: View {
  var body: some View {
    NavigationView {
      List(entries) { entry in
        NavigationLink {
          EntryDetail(entry: entry)
        } label: {
          EntryRow(entry: entry)
        }
      }
      .navigationTitle("Photo Log")
    }
  }
}

struct EntryList_Previews: PreviewProvider {
  static var previews: some View {
    EntryList()
  }
}
