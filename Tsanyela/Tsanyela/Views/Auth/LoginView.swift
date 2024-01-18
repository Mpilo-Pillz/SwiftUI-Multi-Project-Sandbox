//
//  LoginView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/17.
//
import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()

    var body: some View {
        VStack {
            Spacer()
            Text("Login").font(.system(size: 40)).fontWeight(.bold)
            TextField("Username", text: $viewModel.username)
                .padding()
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                .background(Color(.systemGray6)).cornerRadius(5.0)
            
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color(.systemGray6)).cornerRadius(5.0)

            
            if viewModel.isLoading {
                ProgressView()
            } else {
                Button(action: {
                    Task {
                        await viewModel.login()
                    }
                }) {
                    Text("Log In")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
                .disabled(viewModel.username.isEmpty || viewModel.password.isEmpty)
            }
            
            Button(action: {}, label: {
                Text("Forgot Password?")
            })
            Spacer()
            
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
