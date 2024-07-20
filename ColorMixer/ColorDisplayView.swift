//
//  ColorDisplayView.swift
//  ColorMixer
//
//  Created by Akha on 12.03.2024.
//

import Foundation
import SwiftUI

struct ColorDisplayView: View {
    var color: Color
    var title: String
    
    var body: some View{
        VStack {
            Text(title).font(.headline)
            
            Rectangle()
                .foregroundColor(color)
                .cornerRadius(8)
                .frame(height: 150)
                .shadow(radius: 5)
                .padding(.bottom)
        }
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value)
                .tint(textColor)
            Text("1").foregroundColor(textColor)
        }
        .padding(.horizontal)
    }
}
