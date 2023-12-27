//
//  Double_DiceApp.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/27.
//

import SwiftUI

@main
struct Double_DiceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(gameLogic: GameLogic())
        }
    }
}
