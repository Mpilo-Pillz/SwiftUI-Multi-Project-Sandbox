//
//  NavigationMenu.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/05.
//

import SwiftUI

struct NavigationMenu: Scene {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Staff", systemImage: "person.2.fill")
                    }
            }
        }
    }
}
