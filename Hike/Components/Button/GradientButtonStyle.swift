//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Josue Lubaki on 2025-08-14.
//

import SwiftUI
import Foundation

struct GrandientButtonStyle : ButtonStyle {
    func makeBody(configuration : Configuration) -> some View {
        configuration.label // ⚠️ Important
            .padding(.vertical)
            .padding(.horizontal)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition ? A : B
                // A: When User pressed the Button
                // B: When the Button is not pressed
                configuration.isPressed ?
                    (LinearGradient(
                        colors: [.customGrayMedium, .customGrayLight,],
                        startPoint: .top,
                        endPoint: .bottom
                    ))
                :
                    (LinearGradient(
                        colors: [.customGrayLight,.customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    ))
            )
            .cornerRadius(40)
    }
}
