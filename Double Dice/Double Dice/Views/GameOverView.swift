//
//  GameOverView.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/31.
//

import SwiftUI

struct GameOverView: View {
    let finalScore = 12
    var body: some View {
        VStack {
            Text("Game Over!")
            Text("Your Score: \(finalScore)")
        }
    }
}

#Preview {
    GameOverView()
}
