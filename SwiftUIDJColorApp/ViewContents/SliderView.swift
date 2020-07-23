//
//  ColorView.swift
//  SwiftUIDJColorApp
//
//  Created by Ирина Кузнецова on 23.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ColorSlider(value: $sliderValue, textColor: .white, sliderColor: .clear)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value, in: 0...255, step: 1)
            Text("255").foregroundColor(textColor)
        }
        .padding(.horizontal)
    }
}
