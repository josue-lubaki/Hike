//
//  HeaderTitle.swift
//  Hike
//
//  Created by Josue Lubaki on 2025-08-14.
//

import SwiftUI

struct HeaderTitleView: View {
    var title: String
    var fontSize: CGFloat = 52
    
    var body: some View {
        Text(title)
            .fontWeight(.black)
            .font(.system(size: fontSize))
            .foregroundStyle(
                LinearGradient(
                    colors: [
                        .colorGrayLight,
                        .colorGrayMedium
                    ],
                   startPoint: .top,
                   endPoint: .bottom
              )
            )
    }
}

#Preview {
    HeaderTitleView(
        title : "Hiking"
    )
}
