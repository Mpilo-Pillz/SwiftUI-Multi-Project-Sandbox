//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mpilo Pillz on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 3
    @State var rightDiceNumber = 4
    
    var body: some View {
        ZStack {
            Image("background").resizable()
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 40)) // Adjust the font size if needed
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 250, height: 60) // Adjust the frame if needed
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
//                        .cornerRadius(30) // This will round the corners
                        .shadow(radius: 10) // This adds a shadow
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
           
            
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}
