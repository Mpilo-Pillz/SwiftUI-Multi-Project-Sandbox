//
//  ContentView.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/27.
//

import SwiftUI

struct ContentView: View {
    
    @State var gameLogic: GameLogic

    var body: some View {
        VStack {
            if gameLogic.diceRollsLeft > 0 {
                GameView(gameLogic: $gameLogic)
            } else {
                GameOverView()
            }
        }
        
    }
    
}

#Preview {
    ContentView(gameLogic: GameLogic())
}


