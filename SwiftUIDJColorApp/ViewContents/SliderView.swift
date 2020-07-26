//
//  ColorView.swift
//  SwiftUIDJColorApp
//
//  Created by Ирина Кузнецова on 23.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue = 0.0
    @State private var textFieldValue = ""
    
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
            
            Slider(value: $sliderValue, in: 0...255, step: 1) {_ in
                self.textFieldValue = "\(Int(self.sliderValue))"
            }
            
            TextField("0", text: $textFieldValue) {
                if let doubleTextFieldValue = Double(self.textFieldValue) {
                    switch doubleTextFieldValue {
                    case ..<0:
                        self.sliderValue = 0
                    case 0...255:
                        self.sliderValue = doubleTextFieldValue
                    default:
                        self.sliderValue = 255
                    }
                    self.textFieldValue = "\(Int(self.sliderValue))"
                } else {
                    self.textFieldValue = "0"
                }
            }
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
