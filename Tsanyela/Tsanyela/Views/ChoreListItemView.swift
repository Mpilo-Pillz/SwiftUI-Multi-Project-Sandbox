//
//  ChoreListView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/08.
//

import SwiftUI

struct ChoreListItemView: View {
    let choreItem: ChoreItem
    
    private var title: String {
        choreItem.createdDate.formatted(Date.FormatStyle()
            .weekday(.abbreviated)
            .month(.abbreviated)
            .day()
            .year())
    }
    
    var body: some View {
        ScrollView {
            Text(choreItem.text)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
        .padding()
        #if os(iOS)
        .navigationTitle("title")
        #elseif os(macOS)
        .navigationSubtitle("title")
        #endif
    }
}

//#Preview {
//    ChoreListView()
//}
