//
//  ContentView.swift
//  Memorize
//
//  Created by sade on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["😀","🥵", "🤔", "😀"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    let content: String
   @State var isFaceUp: Bool = true
    
    var body: some View{
        ZStack {
            //local variable to store rounded rectangle
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
                
            } else {
                base.fill()
            }
        }
        .onTapGesture(perform:  {
            isFaceUp.toggle()
        })
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
