//
//  SettingsView.swift
//  Hike
//
//  Created by Josue Lubaki on 2025-08-15.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    private let alternateAppIcons : [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire",
    ]
    
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
            Section(header: Text("Alternate Icons")){
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices, id : \.self) { item in
                            Button {
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    
                                    if error != nil {
                                        print("Failed to set alternate icon: \(error!.localizedDescription)")
                                    }
                                    else {
                                        print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                                    }
                                }
                                
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                } //: SCROLL VIEW
                .padding(.top, 12)
                
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            } //: SECTION
            .listRowSeparator(.hidden)
            
            // SECTION ABOUT
            Section(
                header: Text("About the app"),
                footer: HStack {
                    Spacer()
                    Text("Made with ❤️ by Josue Lubaki")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .padding(.vertical, 8)
                    Spacer()
                }
                .padding(.vertical, 8)
            ) {
                // 1. Basis Labeled Content
                // LabeledContent("Application", value : "Hike")
                
                // 2. Advances Labeled content
                CustomListRowView(
                    rowLabel: "Application",
                    rowIcon: "apps.iphone",
                    rowContent: "HIKE",
                    rowTintColor: .blue
                )
                
                CustomListRowView(
                    rowLabel: "Compatibility",
                    rowIcon: "info.circle",
                    rowContent: "iOS, iPadOS",
                    rowTintColor: .red
                )
                
                CustomListRowView(
                    rowLabel: "Technology",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTintColor: .orange
                )
                
                CustomListRowView(
                    rowLabel: "Version",
                    rowIcon: "gear",
                    rowContent: "1.0",
                    rowTintColor: .purple
                )
                
                CustomListRowView(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Josue Lubaki",
                    rowTintColor: .mint
                )
                
                CustomListRowView(
                    rowLabel: "Designer",
                    rowIcon: "paintpalette",
                    rowContent: "Robert Petras",
                    rowTintColor: .pink
                )
                
                CustomListRowView(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowTintColor: .indigo,
                    rowLinkLabel: "Portfolio",
                    rowLinkDestination: "https://josue-lubaki.ca"
                )
            } //: SECTION
        } //: LIST
    }
}

#Preview {
    SettingsView()
}
