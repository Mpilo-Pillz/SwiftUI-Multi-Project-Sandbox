//
//  ContentView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/05.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var chore = Chore()
    
    var body: some View {
        NavigationStack {
            List(chore.chores) { chore in
                NavigationLink(value: chore) {
                    ChoreListItem(choreItem: chore)
                }
            }
            .navigationDestination(for: ChoreItem.self) {chore in
                ChoreListItemView(choreItem: chore)
            }
            .navigationTitle("Chore")
            .toolbar {
                ToolbarItem {
                    Button {
                        print("Add new chore")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
