//
//  ImagePreview.swift
//  Snaply
//
//  Created by Samantha Emily-Rachel Belnavis on 2023-09-12.
//

import Foundation
import SwiftUI

struct ImagePreview: View {
  var image: Image
  var body: some View {
    image
      .resizable()
      .clipShape(Circle())
      .overlay {
        Circle().stroke(.white, lineWidth: 4)
      }
      .shadow(radius: 7)
      .frame(width: 128.0, height: 128.0)
  }
}

struct ImagePreview_Previews: PreviewProvider {
  static var previews: some View {
    ImagePreview(image: Image("sample2"))
  }
}
