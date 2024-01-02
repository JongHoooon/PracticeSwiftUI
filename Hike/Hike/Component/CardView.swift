//
//  CardView.swift
//  Hike
//
//  Created by JongHoon on 1/2/24.
//

import SwiftUI

struct CardView: View {
  var body: some View {
    // MARK: - Card
    
    ZStack {
      CustomBackgroundView()
      
      ZStack {
        Circle()
          .fill(
            .linearGradient(
              colors: [.colorIndigoMedium, .colorSalmonLight],
              startPoint: .topLeading,
              endPoint: .bottomTrailing
            )
          )
          .frame(width: 256.0, height: 256.0)
        
        Image(.image1)
          .resizable()
          .scaledToFit()
      }
    } //: Card
    .frame(width: 320.0, height: 570.0)
  }
}

#Preview {
  CardView()
}
