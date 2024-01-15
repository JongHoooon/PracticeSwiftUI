//
//  SettingsView.swift
//  Hike
//
//  Created by JongHoon on 1/14/24.
//

import SwiftUI

struct SettingsView: View {
  var body: some View {
    List {
      // MARK: - SECTION: HEADER
      
      Section {
        HStack {
          Spacer()
          
          Image(systemName: "laurel.leading")
            .font(.system(size: 80.0, weight: .black))
          
          VStack(spacing: -10) {
            Text("Hike")
              .font(.system(size: 66.0, weight: .black))
            
            Text("Editors' Choice")
              .fontWeight(.medium)
          }
          
          Image(systemName: "laurel.trailing")
            .font(.system(size: 80.0, weight: .black))
          
          Spacer()
        }
        .foregroundStyle(
          LinearGradient(
            colors: [
              .customGreenLight,
              .customGreenMedium,
              .customGreenDark
            ],
            startPoint: .top,
            endPoint: .bottom
          )
        )
        .padding(.top, 8.0)
        
        VStack(spacing: 8.0) {
          Text("Where can you find \nperfect tracks?")
            .font(.title2)
            .fontWeight(.heavy)
          
          Text("The hike looksgorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
            .font(.footnote)
            .italic()
          
          Text("Dust off the boots! It's time for a walk.")
            .fontWeight(.heavy)
            .foregroundStyle(Color(.colorGreenMedium))
        }
        .multilineTextAlignment(.center)
        .padding(.bottom, 16.0)
        .frame(maxWidth: .infinity)
      } // Header
      .listRowSeparator(.hidden)
        
      // MARK: - SECTION: ICONS
      
      
      // MARK: - SECTION: ABOUT
      Section {
        Text("List Row")
      }
      
    } // List
  }
}

#Preview {
  SettingsView()
}
