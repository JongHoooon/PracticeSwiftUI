//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by JongHoon on 1/2/24.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
  
  func makeBody(configuration: Configuration) -> some View {
    return configuration
      .label
      .padding(.vertical)
      .padding(.horizontal, 30.0)
      .background(
        // Conditional Statement with Nil Coalescing
        configuration.isPressed
          ? LinearGradient(
            colors: [.colorGrayMedium, .colorGrayLight],
            startPoint: .top,
            endPoint: .bottom
          )
        : LinearGradient(
          colors: [.colorGrayLight, .colorGrayMedium],
          startPoint: .top,
          endPoint: .bottom
        )
      )
      .clipShape(.rect(cornerRadius: 40.0))
  }
}
