//
//  ContentView.swift
//  Snaply
//
//  Created by Emily Belnavis
//  Date: 2023-09-05
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .ignoresSafeArea(edges: .top)  
        .frame(height: 300)
      
      ImagePreview()
        .offset(y: -130)
        .padding(.bottom, -130)
      
      VStack(alignment: .leading) {
        Text("Distillery District Gates")
          .font(.title)
        HStack {
          Text("Distillery District")
          Spacer()
          Text("Toronto, Ontario")
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
      }
      .padding()
      
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
