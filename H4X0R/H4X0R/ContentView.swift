//
//  ContentView.swift
//  H4X0R
//
//  Created by Mpilo Pillz on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello, world!")
            }
            .navigationTitle("H4X0R NEWS")
        }
        
    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Eita"),
    Post(id: "2", title: "Ola"),
    Post(id: "3", title: "Fede")
]
