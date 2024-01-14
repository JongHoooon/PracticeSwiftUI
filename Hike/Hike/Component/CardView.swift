//
//  CardView.swift
//  Hike
//
//  Created by JongHoon on 1/2/24.
//

import SwiftUI

struct CardView: View {
  
  // MARK: -  Properties
  
  @State
  private var imageNumber = 1
  @State
  private var randomNumber = 1
  @State
  private var isShowingSheet = false
  
  // MARK: -  Functions
  
  private func randomImage() {
    print("--- Button Was Pressed ---")
    print("Status: Old Image Number = \(imageNumber)")
    
    repeat {
      randomNumber = .random(in: 1...5)
      print("Action: RandomNumber Generated = \(randomNumber)")
    } while randomNumber == imageNumber
              
    imageNumber = randomNumber
    
    print("Result: New Image Number = \(imageNumber)")
    print("--- The End ---")
    print("\n") 
  }
  
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
              isShowingSheet.toggle()
            } label: {
              CustomButtonView()
            }
            .sheet(isPresented: $isShowingSheet, content: {
              SettingsView()
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .large])
            })
          }
          
          Text("Fun and enjoyable outdoor activity for friends and families.")
            .multilineTextAlignment(.leading)
            .italic()
            .foregroundStyle(.colorGrayMedium)
        } //: Header
        .padding(.horizontal, 30.0)
        
        // MARK: - Main Content
        
        ZStack {
          CustomCircleView()
          
          Image("image-\(imageNumber)")
            .resizable()
            .scaledToFit()
            .animation(.default, value: imageNumber)
        }
        
        // MARK: - Footer
        
        Button {
          // Action: Generate a random number
          print("The Button was pressed.")
          randomImage()
        } label: {
          Text("Explore More")
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundStyle(
              LinearGradient(
                colors: [.colorGreenLight, .colorGreenMedium],
                startPoint: .top,
                endPoint: .bottom
              )
            )
            .shadow(
              color: .black.opacity(0.25),
              radius: 0.25,
              x: 1,
              y: 2
            )
        }
        .buttonStyle(GradientButtonStyle())
        
      }
    } //: Card
    .frame(width: 320.0, height: 570.0)
  }
}

#Preview {
  CardView()
}
