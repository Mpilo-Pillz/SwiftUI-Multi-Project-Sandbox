//
//  LoginViewModel.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/17.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    func login() async {
        let loginURL = URL(string: "http://localhost:3000/tsanyela/auth/login")!
        var request = URLRequest(url: loginURL)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body = ["email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
        
        isLoading = true
        
        do {
            //            let user = try await loginUser(username: email, password: password)
            let (data, response) = try await URLSession.shared.data(for: request)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                DispatchQueue.main.async {
                    self.errorMessage = "Invalid response from server"
                    self.isLoading = false
                }
                return
            }
            DispatchQueue.main.async {
                self.isLoggedIn = true
            }
            
        } catch {
            
            DispatchQueue.main.async {
                self.errorMessage = "Login failed: \(error.localizedDescription)"
                self.isLoading = false
            }
        }
        
    }
    
    private func loginUser(username: String, password: String) async throws -> User {
        let dummyUser = User(id: "123", name: "John Doe")
        return dummyUser
    }
}
