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
    @State private var textFieldValue = "0"
    
    var body: some View {
        SliderStack(sliderValue: $sliderValue, textFieldValue: $textFieldValue)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

struct SliderStack: View {
    @Binding var sliderValue: Double
    @Binding var textFieldValue: String
    
    
    var body: some View {
        HStack {
            Text("\(Int(sliderValue))")
                .foregroundColor(.white)
                .frame(width: 50, height: 35)
            
            ColorSlider(value: $sliderValue, textColor: .white, sliderColor: .clear)
            
            TextField("0", text: $textFieldValue)
                .frame(width: 50, height: 35)
                .foregroundColor(.black)
                .padding(.leading, 8)
                .background(Color.white)
                .cornerRadius(8)
                .keyboardType(.numbersAndPunctuation)
        }
        .padding(.horizontal)
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Slider(value: $value, in: 0...255, step: 1)
        }
        .padding(.horizontal)
    }
}
