//
//  MotionAnimationView.swift
//  Hike
//
//  Created by JongHoon on 1/2/24.
//

import SwiftUI

struct MotionAnimationView: View {
  
  // MARK: - Properties
  
  @State
  private var randomCircle = Int.random(in: 6...12)
  @State
  private var isAnimating = false
  
  // MARK: - Functions
  
  // 1. random coordinate
  func randomCoordinate() -> CGFloat {
    return CGFloat.random(in: 0...256)
  }
  
  // 2. random size
  private func randomSize() -> CGFloat {
    return CGFloat(Int.random(in: 4...80))
  }
  
  // 3. random scale
  private func randomScale() -> CGFloat {
    return CGFloat(Double.random(in: 0.1...2.0))
  }
  
  // 4. random speed
  private func randomSpeed() -> Double {
    return Double.random(in: 0.05...1.0)
  }
  
  // 5. random delay
  private func randomDelay() -> Double {
    return Double.random(in: 0...2)
  }
  
  var body: some View {
    ZStack {
      ForEach(0...randomCircle, id: \.self) { item in
        Circle()
          .foregroundStyle(.white)
          .opacity(0.25)
          .frame(width: randomSize())
          .position(
            x: randomCoordinate(),
            y: randomCoordinate()
          )
          .scaleEffect(isAnimating ? randomSize() : 1)
          .onAppear(perform: {
            withAnimation(
              .interpolatingSpring(
                stiffness: 0.25,
                damping: 0.25
              )
              .repeatForever()
              .speed(randomSpeed())
              .delay(randomDelay())
            ) {
              isAnimating = true
            }
          })
      }
    } //: ZStack
    .frame(width: 256.0, height: 256.0)
    .mask(Circle())
    .drawingGroup()
  }
}

#Preview {
  ZStack {
    MotionAnimationView()
      .background(
        Circle()
          .fill(.teal)
      )
  }
}
