//
//  ContentView.swift
//  MpiloCard
//
//  Created by Mpilo Pillz on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00).ignoresSafeArea(edges: .all)
            VStack {
                Image("beerPillz").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 150).clipShape(Circle())
                
                Text("Mpilo Pillz").font(Font.custom("Pacifico-Regular", size: 40)).bold().foregroundStyle(.white)
                Text("iOS Developer").foregroundStyle(.white).font(.system(size: 25))
                Divider()
                RoundedRectangle(cornerRadius: 25)
                   .fill(Color.white)
                   .frame(height: 50)
                   .foregroundColor(.white)
                   .overlay {
                       HStack {
                           Image(systemName: "phone.fill").foregroundStyle(Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00))
                           Text("+2726274261")
                       }
                       
                   }
            }
        }
    }
}

#Preview {
    ContentView()
}
