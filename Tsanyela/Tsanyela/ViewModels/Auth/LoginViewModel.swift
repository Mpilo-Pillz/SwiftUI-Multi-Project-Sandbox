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
        
        do {
            let user = try await performLogin(username: username, password: password)
            print("Login successful for user: \(user.username)")
        } catch {
            loginError = error
        }
        
        isLoading = false
    }
    
    func performLogin(username: String, password: String) async throws -> User {
        var loginSuccessful = false
        var grantAccess = true
        if grantAccess {
            loginSuccessful = true
                    return User(username: username, password: password)
                } else {
                    throw NSError(domain: "", code: 401, userInfo: [NSLocalizedDescriptionKey: "Invalid credentials."])
                }
    }
}
