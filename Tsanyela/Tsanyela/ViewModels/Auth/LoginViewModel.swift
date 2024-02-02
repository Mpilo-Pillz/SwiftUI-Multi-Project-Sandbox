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
        guard !email.isEmpty, !password.isEmpty else {
            return
        }
        
//        isLoading = true
//        defer { isLoading = false }
        
        DispatchQueue.main.async {
                self.isLoading = true
            }
        
        let loginURL = URL(string: "http://localhost:3000/tsanyela/auth/login")!
        var request = URLRequest(url: loginURL)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body: [String: String] = ["email": email, "password": password]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
        
//        isLoading = true
        
        do {
            //            let user = try await loginUser(username: email, password: password)
            let (data, _) = try await URLSession.shared.data(for: request)
            
            if let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data)  {
                DispatchQueue.main.async {
                    print("Access Token: \(loginResponse.access_token)")
                    UserDefaults.standard.set(loginResponse.access_token, forKey: "access_token")
                    self.isLoading = false
                }
                
                
            } else {
                DispatchQueue.main.async {
                                print("Failed to decode response")
                            }
            }
            
        } catch {
            DispatchQueue.main.async {
                print("Login request failed with error: \(error)")
                self.errorMessage = "Login failed: \(error.localizedDescription)"
//                self.isLoading = false
            }
        }
        
    }
    
    private func loginUser(username: String, password: String) async throws -> User {
        let dummyUser = User(id: "123", name: "John Doe")
        return dummyUser
    }
}

struct LoginResponse: Codable {
    let access_token: String
}
