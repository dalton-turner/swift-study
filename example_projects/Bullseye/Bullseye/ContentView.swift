//
//  ContentView.swift
//  Bullseye
//
//  Created by Dalton Turner on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                    .font(.body)
                Slider(value: .constant(50),
                       in: 1.0...100.0)
                Text("100")
                    .bold()
                    .font(.body)
            }
            Button(action:{}){
                Text("Hit Me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
        ContentView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
