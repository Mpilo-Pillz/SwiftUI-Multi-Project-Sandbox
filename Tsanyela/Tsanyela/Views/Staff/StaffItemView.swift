//
//  StaffItemView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/13.
//

import SwiftUI

struct StaffItemView: View {
    let staffItem: StaffItem
    var body: some View {
        VStack {
            Text(staffItem.name)
            HStack {
                Text(staffItem.staffType)
                Text("R\(staffItem.dailyRate)")
            }
        }
    }
}

//#Preview {
//    StaffItemView()
//}
