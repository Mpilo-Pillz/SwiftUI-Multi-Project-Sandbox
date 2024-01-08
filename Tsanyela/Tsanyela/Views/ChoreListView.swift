//
//  ChoreListView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/08.
//

import SwiftUI

struct ChoreListView: View {
    
    
    var body: some View {
        ScrollView {
            Text("Chores for the day")
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

#Preview {
    ChoreListView()
}
