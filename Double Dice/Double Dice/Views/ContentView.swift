//
//  ContentView.swift
//  Double Dice
//
//  Created by Mpilo Pillz on 2023/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(edges: .all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                    
                }
                .padding(.horizontal)
            }
        }
       
    }
}

#Preview {
    ContentView()
}
