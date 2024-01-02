//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by JongHoon on 1/2/24.
//

import SwiftUI

struct CustomBackgroundView: View {
  var body: some View {
    ZStack {
      // MARK: - 3. Depth
      
      Color.colorGreenDark
        .clipShape(.rect(cornerRadius: 40.0))
        .offset(y: 12.0)
          
      // MARK: - 2. Light
      
      Color.colorGreenLight
        .clipShape(.rect(cornerRadius: 40.0))
        .offset(y: 3.0)
        .opacity(0.85)
      
      // MARK: - 1. Supface
      
      LinearGradient(
        colors: [.colorGreenLight, .colorGreenMedium],
        startPoint: .top,
        endPoint: .bottom
      )
      .clipShape(.rect(cornerRadius: 40.0))
    }
  }
}

#Preview {
  CustomBackgroundView()
    .padding()
}
