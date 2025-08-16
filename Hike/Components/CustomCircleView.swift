//
//  CustomCircleView.swift
//  Hike
//
//  Created by Josue Lubaki on 2025-08-15.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGrandient : Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .colorIndigoMedium,
                            .colorSalmonLight
                        ],
                        startPoint: isAnimateGrandient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGrandient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGrandient.toggle()
                    }
                }
            
            MotionAnimation()

        } //: ZSTACK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
