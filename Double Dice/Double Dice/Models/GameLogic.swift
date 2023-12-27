//
//  GameLogic.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/28.
//

import Foundation

struct GameLogic {
    
    var numberOfDiceRollsLeft: Int = 10
    var userScore: Int = 0
    
    private func isDoube(diceOne: Int, diceTwo: Int) -> Bool {
        return diceOne == diceTwo
    }
    
    mutating func checkIfDouble(diceOne: Int, diceTwo: Int) {
        
        if isDoube(diceOne: diceOne, diceTwo: diceTwo) {
            userScore = userScore + diceOne + diceTwo
            numberOfDiceRollsLeft += 1
        } else {
            numberOfDiceRollsLeft -= 1
        }
    }
    
}
