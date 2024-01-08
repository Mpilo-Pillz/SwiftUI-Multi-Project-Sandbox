//
//  ChoreItem.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/08.
//

import Foundation

struct ChoreItem: Identifiable, Hashable {
    let id = UUID()
    let createdDate: Date
    var text = ""
    
    init(createdDate: Date = Date(), text: String = "") {
        self.createdDate = createdDate
        self.text = text
    }
}
