//
//  ContentView.swift
//  Bullseye
//
//  Created by Dalton Turner on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    @State private var sliderValue: Double = 50.0
    
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                    .font(.body)
                Slider(value: self.$sliderValue,
                       in: 1.0...100.0)
                Text("100")
                    .bold()
                    .font(.body)
            }
            Button(action:{self.alertIsVisible = true}){Text("Hit Me")}
        }
        .alert("The slider's value is", isPresented: $alertIsVisible) {
          Button("Awesome!") { }
        } message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("\(roundedValue)\n" +
                 "You scored \(self.game.points(sliderValue: roundedValue)) points this round")
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
