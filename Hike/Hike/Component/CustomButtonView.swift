//
//  CustomButtonView.swift
//  Hike
//
//  Created by JongHoon on 1/2/24.
//

import SwiftUI

struct CustomButtonView: View {
  var body: some View {
    ZStack {
      Circle()
        .fill(
          LinearGradient(
            colors: [
              .white,
              .colorGreenLight,
              .colorGreenMedium
            ],
            startPoint: .top,
            endPoint: .bottom
          )
        )
      
      Circle()
        .stroke(
          LinearGradient(
            colors: [
              .colorGrayLight,
              .colorGrayMedium],
            startPoint: .top,
            endPoint: .bottom),
          lineWidth: 4.0
        )
      
      Image(systemName: "figure.hiking")
        .fontWeight(.black)
        .font(.system(size: 30.0))
        .foregroundStyle(
          LinearGradient(
            colors: [.colorGrayLight, .colorGrayMedium],
            startPoint: .top,
            endPoint: .bottom
          )
        )
    } //: ZStack
    .frame(width: 58.0, height: 58.0)
  }
}

#Preview {
  CustomButtonView()
    .previewLayout(.sizeThatFits)
    .padding()
}
