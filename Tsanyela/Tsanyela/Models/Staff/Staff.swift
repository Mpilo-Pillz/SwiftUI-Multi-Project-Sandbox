//
//  Staff.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/11.
//

import Foundation

class Staff: ObservableObject{
    @Published var staff: [StaffItem] = [
    StaffItem(name: "Neruson", dailyRate: 350, staffType: "Gardener"),
    StaffItem(name: "Sanene", dailyRate: 300, staffType: "Helper")
    ]
    
//  let id: Int
//  let name: String
//    let staffType: StaffType;

}

struct StaffType  {
    let gardener: String
    let helper: String
}

//  let user: User;
//  let userId: string;
  
//  let staffTypeId: number;
//  let tasks: Task[];
