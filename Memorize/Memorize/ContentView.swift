//
//  ContentView.swift
//  Memorize
//
//  Created by sade on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.black)
        .padding()
    }
}


struct CardView: View {
   @State var isFaceUp: Bool = true
    
    var body: some View{
        ZStack {
            //local variable to store rounded rectangle
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 5)
                Text("😀").font(.largeTitle)
                
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
