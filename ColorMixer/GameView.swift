//
//  GameView.swift
//  ColorMixer
//
//  Created by Akha on 12.03.2024.
//

import Foundation
import SwiftUI

struct GameView: View {
    @State private var redValue: Double = 0.5
    @State private var greenValue: Double = 0.5
    @State private var blueValue: Double = 0.5
    @State private var targetColor = Color(red: 0.9, green: 0.7, blue: 0.1)
    
    var body: some View{
        VStack{
            ColorDisplayView(color: targetColor, title: "Match This color")
        }
        
        // Display the current mixed color
        ColorDisplayView(color: currentMixedColor, title: "Your Mix")

        // RGB Sliders
        ColorSlider(value: $redValue, textColor: .red)
        ColorSlider(value: $greenValue, textColor: .green)
        ColorSlider(value: $blueValue, textColor: .blue)
    }
    
    private var currentMixedColor: Color {
        Color(red: redValue, green: greenValue, blue: blueValue)
    }
}


