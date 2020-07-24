//
//  ValueSliderView.swift
//  SwiftUIDJColorApp
//
//  Created by Ирина Кузнецова on 23.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @State private var textFieldValue = ""
    
    var body: some View {
        TextField("0", text: $textFieldValue)
            .frame(width: 50, height: 35)
            .foregroundColor(.black)
            .padding(.leading, 8)
            .background(Color.white)
            .cornerRadius(8)
            .keyboardType(.numbersAndPunctuation)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
