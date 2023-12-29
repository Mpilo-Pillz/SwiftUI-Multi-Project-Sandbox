//
//  ContentView.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/27.
//

import SwiftUI

struct ContentView: View {
    
    let diceRange = 1...6
    
    @State var gameLogic: GameLogic
    
    @State var leftDiceNumber = 5
    @State var rightDiceNumber = 6
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(edges: .all)
            VStack {
                Image("diceeLogo")
                VStack(alignment: .leading) {
                    GameStatsText(text: "Score: \(gameLogic.userScore)", size: .title, color: .white)
                    GameStatsText(text: "Dice Rolls left: \(gameLogic.diceRollsLeft)", size: .headline, color: .white)
                }
                
                Spacer()
                HStack{
                    DiceView(diceNumber: leftDiceNumber)
                    DiceView(diceNumber: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: buttonPressed) {
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 250, height: 60)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
                
            }
        }
        
    }
    
    func buttonPressed() {
        leftDiceNumber = Int.random(in: diceRange)
        rightDiceNumber = Int.random(in: diceRange)
        gameLogic.checkIfDouble(diceOne: leftDiceNumber, diceTwo: rightDiceNumber)
    }
}

#Preview {
    ContentView(gameLogic: GameLogic())
}


