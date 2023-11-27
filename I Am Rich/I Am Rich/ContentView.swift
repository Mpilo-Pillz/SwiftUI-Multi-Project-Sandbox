//
//  ContentView.swift
//  I Am Rich
//
//  Created by Mpilo Pillz on 2023/11/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.5, green: 0.5, blue: 0.5).ignoresSafeArea(.all)
            VStack {
                Text("I Am Rich").font(.system(size: 40)).fontWeight(.bold).foregroundStyle(Color.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
