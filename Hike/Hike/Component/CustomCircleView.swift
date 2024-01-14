//
//  CustomCircleView.swift
//  Hike
//
//  Created by JongHoon on 1/2/24.
//

import SwiftUI

struct CustomCircleView: View {
  
  @State
  private var isAnimateGradient = false
  
  var body: some View {
    ZStack {
      Circle()
        .fill(
          .linearGradient(
            colors: [
              .colorIndigoMedium,
              .colorSalmonLight
            ],
            startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
            endPoint: isAnimateGradient ? .bottomTrailing : .topLeading
          )
        )
        .onAppear {
          withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
            isAnimateGradient.toggle()
          }
        }
      
      MotionAnimationView()
    } // ZStack
    .frame(width: 256.0, height: 256.0)
  }
}

#Preview {
  CustomCircleView()
}
