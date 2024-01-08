//
//  Chore.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/08.
//

import Foundation

class Chore: ObservableObject {
    @Published var chores: [ChoreItem] = [
    ChoreItem(
        createdDate: today(minus: 0),
        text: "Mow the Lawn"),
    ChoreItem(createdDate: today(minus: 4),
              text: "Wash the curtains")
    ]
    
    private static func today(minus days: Int) -> Date {
        let dateComponents = DateComponents(day: -days)
        return Calendar.current.date(byAdding: dateComponents, to: Date()) ?? Date()
    }
}
