//
//  ColorView.swift
//  SwiftUIDJColorApp
//
//  Created by Ирина Кузнецова on 23.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    var redValue: Double
    var greenValue: Double
    var blueValue: Double
    
    var body: some View {
        VStack {
            Color(red: redValue/255, green: greenValue/255, blue: blueValue/255)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4))
                .frame(height: 150)
                .padding()
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redValue: 0.0, greenValue: 0.0, blueValue: 0.0)
    }
}
