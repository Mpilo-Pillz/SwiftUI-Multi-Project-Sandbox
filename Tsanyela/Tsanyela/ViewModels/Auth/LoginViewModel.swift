//
//  LoginViewModel.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/17.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username = ""
        @Published var password = ""
        @Published var isLoading = false
        @Published var loginError: Error?
    
    func login() async {
        guard !username.isEmpty, !password.isEmpty else {
                    loginError = NSError(domain: "", code: 400, userInfo: [NSLocalizedDescriptionKey: "Username and password are required."])
                    return
                }
        
        isLoading = true
    }
}
