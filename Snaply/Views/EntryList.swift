//  EntryList.swift
//  Snaply
//
//  Copyright © 2023 Emily Belnavis
//  All Rights Reserved.

import Foundation
import SwiftUI
import SwiftData

//
//struct EntryList: View {
//  var body: some View {
//    NavigationView {
//      List(entries) { entry in
//        NavigationLink {
//          EntryDetail(entry: entry)
//        } label: {
//          EntryRow(entry: entry)
//        }
//      }
//      .navigationTitle("Photo Log")
//    }
//  }
//}

struct EntryList: View {
  @State private var showAddEntry = false
  @Query private var entries: [ImageEntryItem]
  var body: some View {
    NavigationStack {
      List(entries) { entry in
        NavigationLink {
          EntryDetail(entry: entry)
        } label: {
          EntryRow(entry: entry)
        }
      }
        .toolbar {
          ToolbarItem {
            Button(action: {
              showAddEntry.toggle()
            }, label: {
              Label("Add Entry", systemImage: "plus")
            })
          }
        }
        .sheet(isPresented: $showAddEntry, content: {
          NavigationStack {
            AddImageEntry()
          }
          .presentationDetents([.medium])
        })
        .navigationTitle("Photo Log")
    }
  }
}

struct EntryList_Previews: PreviewProvider {
  static var previews: some View {
    EntryList()
  }
}
