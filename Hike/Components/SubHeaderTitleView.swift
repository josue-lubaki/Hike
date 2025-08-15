//
//  SubHeaderTitle.swift
//  Hike
//
//  Created by Josue Lubaki on 2025-08-14.
//

import SwiftUI

struct SubHeaderTitleView: View {
    var body: some View {
        Text("Fun and enjoyable outdoor activities for friends and families")
            .font(.headline)
            .multilineTextAlignment(.leading)
            .italic()
            .foregroundColor(.customGrayMedium)
    }
}

#Preview {
    SubHeaderTitleView()
}
