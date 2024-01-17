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
            TextField("Username", text: $viewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            if viewModel.isLoading {
                ProgressView()
            } else {
                Button("Log In") {
                    Task {
                        await viewModel.login()
                    }
                }
                .disabled(viewModel.username.isEmpty || viewModel.password.isEmpty)
            }
            
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
