//
//  MotionAnimation.swift
//  Hike
//
//  Created by Josue Lubaki on 2025-08-15.
//

import SwiftUI

struct MotionAnimation: View {
    
    // MARK: - PROPERTIES
    @State private var randomCircle : Int = Int.random(in: 6...12)
    @State private var isAnimating : Bool = false
    
    // MARK: - FUNCTIONS
    
    // RANDOM COORDINATES
    func randomCoordinates() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    
    // RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    // RANDOM DELAY
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id : \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x : randomCoordinates(),
                        y : randomCoordinates()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimating = true
                        }
                    })
                    
            }
        } //: ZSTACK
        .frame(width: 256, height: 256)
        
        // Apply mask to create a circular effect
        // avoiding the circle moving outside the view
        .mask(Circle())
        
        // High performance rendering
        // Direct connect to the GPU
        .drawingGroup()
    }
}

#Preview {
    MotionAnimation()
        .background(
            Circle()
                .fill(.teal)
        )
}
