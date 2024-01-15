//
//  CustomListRowView.swift
//  Hike
//
//  Created by JongHoon on 1/15/24.
//

import SwiftUI

struct CustomListRowView: View {
  
  // MARK: - Properties
  @State 
  var rowLabel: String
  @State
  var rowIcon: String
  @State
  var rowContent: String?
  @State
  var rowTintColor: Color
  @State
  var rowLinkLabel: String?
  @State
  var rowLinkDestination: String?
  
  var body: some View {
    LabeledContent {
      // Content
      if let rowContent {
        
        Text(rowContent)
          .foregroundStyle(.primary)
          .fontWeight(.heavy)
        
      } else if let rowLinkLabel,
                let rowLinkDestination {

        Link(
          rowLinkLabel,
          destination: URL(string: rowLinkDestination)!
        )
        .foregroundStyle(.pink)
        .fontWeight(.heavy)
        
      } else {
        
        EmptyView()
        
      }
    } label: {
      // Label
      HStack {
        ZStack {
          RoundedRectangle(cornerRadius: 8.0)
            .frame(width: 30.0, height: 30.0)
            .foregroundStyle(rowTintColor)
          Image(systemName: rowIcon)
            .foregroundStyle(Color(.white))
            .fontWeight(.semibold)
        }
        
        Text(rowLabel)
      }
    }
  }
}

#Preview {
  List {
    CustomListRowView(
      rowLabel: "Website",
      rowIcon: "globe",
      rowContent: nil,
      rowTintColor: .pink,
      rowLinkLabel: "Credo Academy",
      rowLinkDestination: "https://credo.academy"
    )
  }
}
