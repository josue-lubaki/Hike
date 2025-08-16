//
//  SettingsView.swift
//  Hike
//
//  Created by Josue Lubaki on 2025-08-15.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // SECTION HEADER
            Section {
                HStack(alignment: .center) {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80))
                    
                    VStack(spacing : -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80))
                    
                    Spacer()
                } //: HSTACK
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark
                    ],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .padding(.top, 8)
                
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike that you hope to do again someday.\nFind the best day hikes in the world, from the most popular trails to hidden gems.\n\nDownload the hike app")
                        .font(.footnote)
                        .italic()
                        .foregroundStyle(.secondary)
                    
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                    
                } //: VSTACK
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
    
                
              
            } //: HEADER SECTION
            .listRowSeparator(.hidden)
            
            // SECTION ICONS
            
            // SECTION ABOUT
        } //: LIST
    }
}

#Preview {
    SettingsView()
}
