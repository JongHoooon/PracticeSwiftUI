//
//  ContentView.swift
//  AsyncImage
//
//  Created by JongHoon on 12/31/23.
//

import SwiftUI

extension Image {
  func imageModifier() -> some View {
    self
      .resizable()
      .scaledToFit()
  }
  
  func iconModifier() -> some View {
    self
      .imageModifier()
      .frame(maxWidth: 128)
      .foregroundStyle(.purple)
      .opacity(0.5)
  }
}

struct ContentView: View {
  private let imageURL = "https://credo.academy/credo-academy@3x.png"
  
  var body: some View {
    // MARK: - 1. Basic
    //        AsyncImage(url: URL(string: imageURL))
    
    // MARK: - 2. Scale
    //        AsyncImage(url: URL(string: imageURL), scale: 3.0)
    
    // MARK: - 3. Placeholder
//    AsyncImage(
//      url: URL(string: imageURL),
//      content: {
//        $0.imageModifier()
//      },
//      placeholder: {
//        Image(systemName: "photo.circle.fill").iconModifier()
//      })
//    .padding(40.0)
    
    // MARK: - 4. Phase
//    AsyncImage(url: URL(string: imageURL)) { phase in
//      // success: The image successfully loaded.
//      // failure: The image failed to load an error.
//      // empty: No image is loaded.
//      
//      if let image = phase.image {
//        image.imageModifier()
//      } else if phase.error != nil {
//        Image(systemName: "ant.circle.fill").iconModifier()
//      } else {
//        Image(systemName: "photo.circlwe.fill").iconModifier()
//      }
//    }
//    .padding(40.0)
    
    // MARK: - 5. Animation
    AsyncImage(
      url: URL(string: imageURL),
      transaction: Transaction(animation: .spring(
        response: 0.5,
        dampingFraction: 0.6,
        blendDuration: 0.25
      )),
      content: { phase in
        switch phase {
        case let .success(image):
          image
            .imageModifier()
            .transition(.scale)
//            .transition(.slide)
//            .transition(.move(edge: .bottom))
        case .failure(_):
          Image(systemName: "ant.circle.fill").iconModifier()
        case .empty:
          Image(systemName: "photo.circle.fill").iconModifier()
        @unknown default:
          ProgressView()
        }
    })
    .padding(40.0)
  }
}

#Preview {
  ContentView()
}
