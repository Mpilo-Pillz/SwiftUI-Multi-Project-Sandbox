//
//  GameLogic.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/28.
//

import Foundation

struct GameLogic {
    
    var diceRollsLeft: Int = 10
    var userScore: Int = 0
    
    private func isDoube(diceOne: Int, diceTwo: Int) -> Bool {
        return diceOne == diceTwo
    }
    
    mutating func checkIfDouble(diceOne: Int, diceTwo: Int) {
        
        if isDoube(diceOne: diceOne, diceTwo: diceTwo) {
            userScore = userScore + diceOne + diceTwo
            diceRollsLeft += 1
        } else {
            diceRollsLeft -= 1
        }
    }
    
}
