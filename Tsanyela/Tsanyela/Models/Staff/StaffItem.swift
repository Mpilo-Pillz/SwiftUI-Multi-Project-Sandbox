//
//  StaffItem.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/12.
//

import Foundation
struct StaffItem: Identifiable, Hashable {
   
    let id = UUID()
    let name: String
    let dailyRate: Int
    let staffType: String
    
    init(name: String, dailyRate: Int, staffType: String) {
        self.name = name
        self.dailyRate = dailyRate
        self.staffType = staffType
    }
}
