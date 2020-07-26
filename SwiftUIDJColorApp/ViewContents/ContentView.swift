//
//  ContentView.swift
//  SwiftUIDJColorApp
//
//  Created by Ирина Кузнецова on 23.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.192671429, green: 0.2090134957, blue: 0.7347048367, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                ColorView(redValue: redValue, greenValue: greenValue, blueValue: blueValue)
                SliderView(sliderValue: $redValue)
                    .accentColor(.red)
                SliderView(sliderValue: $greenValue)
                    .accentColor(.green)
                SliderView(sliderValue: $blueValue)
                    .accentColor(.blue)
                    
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
