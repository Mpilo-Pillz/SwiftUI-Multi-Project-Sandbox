//
//  TsanyelaApp.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/05.
//

import SwiftUI

@main
struct TsanyelaApp: App {
    @State private var isLoggedIn = false
    
    var body: some Scene {
        WindowGroup {
            #if isLoggedIn
                NavigationMenu()
            #else
                LoginView(onLogin: {
                    self.isLoggedIn = true
                })
            #endif
        }
    }
}
