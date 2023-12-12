//
//  ContentView.swift
//  H4X0R
//
//  Created by Mpilo Pillz on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var newtworkManager = NetworkManager() // set up the propert as a listener aka subscibe in angular
    
    var body: some View {
        NavigationView {
            List(newtworkManager.posts) { post in
                Text(post.title)
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear(perform: {
            newtworkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}

