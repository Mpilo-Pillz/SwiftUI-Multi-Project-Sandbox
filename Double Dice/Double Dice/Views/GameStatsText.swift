//
//  GameStatsText.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/29.
//

import SwiftUI

struct GameStatsText: View {
    let text: String
    let size: Font
    let color: any ShapeStyle
    
    var body: some View {
        Text(text)
            .font(size)
            .fontWeight(.bold)
            .foregroundStyle(color)
    }
}
