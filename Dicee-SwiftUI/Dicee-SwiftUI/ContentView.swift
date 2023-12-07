//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mpilo Pillz on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable()
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Image("diceeLogo")
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 2)
                }
                Button(action: {
                    print("clicked")
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                })
                .background(Color.red)
            }
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
