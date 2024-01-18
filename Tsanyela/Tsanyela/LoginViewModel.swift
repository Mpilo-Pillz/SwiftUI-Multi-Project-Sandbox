//
//  LoginViewModel.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/17.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?

    func login() async {
        isLoading = true
        errorMessage = nil
        
        do {
            let user = try await loginUser(username: username, password: password)
            isLoggedIn = true
        } catch {
            
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
    
    private func loginUser(username: String, password: String) async throws -> User {
        let dummyUser = User(id: "123", name: "John Doe")
        return dummyUser
    }
}
