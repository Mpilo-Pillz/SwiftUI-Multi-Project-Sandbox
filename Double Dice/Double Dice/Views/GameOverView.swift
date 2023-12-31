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
            GameStatsText(text: "Game Over!", size: .title, color: .white)
            GameStatsText(text: "Your Score: \(finalScore)", size: .headline, color: .white)
        }
    }
}

#Preview {
    GameOverView()
}
