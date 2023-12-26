//
//  DiceView.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/27.
//

import SwiftUI

struct DiceView: View {
    let diceNumber: Int
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

#Preview {
    DiceView()
}
