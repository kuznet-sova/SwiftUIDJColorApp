//
//  ContentView.swift
//  SwiftUIDJColorApp
//
//  Created by Ирина Кузнецова on 23.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.192671429, green: 0.2090134957, blue: 0.7347048367, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                ColorView(color: .clear)
                SliderView().accentColor(.red)
                SliderView().accentColor(.green)
                SliderView().accentColor(.blue)
                    
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
