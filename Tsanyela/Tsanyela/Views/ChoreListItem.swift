//
//  ChoreListItem.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/08.
//

import SwiftUI

struct ChoreListItem: View {
    let choreItem: ChoreItem
    var body: some View {
        VStack(alignment: .leading) {
            DateView(date: choreItem.createdDate)
            Text("\(choreItem.text)")
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        }
    }
}

//#Preview {
//    ChoreListItem()
//}
