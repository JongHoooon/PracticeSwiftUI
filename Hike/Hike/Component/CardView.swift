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
      
      VStack {
        // MARK: - Header
        VStack(alignment: .leading) {
          HStack {
            Text("Hiking")
              .fontWeight(.black)
              .font(.system(size: 52.0))
              .foregroundStyle(
                LinearGradient(
                  colors: [.colorGrayLight, .colorGrayMedium],
                  startPoint: .top,
                  endPoint: .bottom
                )
              )
            
            Spacer()
            
            Button {
              // Action: Show a Sheet
              print("The Button was pressed")
            } label: {
              CustomButtonView()
            }
          }
          
          Text("Fun and enjoyable outdoor activity for friends and families.")
            .multilineTextAlignment(.leading)
            .italic()
            .foregroundStyle(.colorGrayMedium)
        } //: Header
        .padding(.horizontal, 30.0)
        
        // MARK: - Main Content
        
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
        
        // MARK: - Footer
        
      }
    } //: Card
    .frame(width: 320.0, height: 570.0)
  }
}

#Preview {
  CardView()
}
