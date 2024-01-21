//
//  LoginView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/17.
//
import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
var onLogin: () -> Void

    var body: some View {
        VStack {
            Spacer()
            Text("Login").font(.system(size: 40)).fontWeight(.bold)
            TextInputView(placeholder: "Username", textValue: $viewModel.username)
            TextInputView(placeholder: "Password", textValue: $viewModel.password, isSecure: true)
            
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
//
//#Preview {
//    LoginView()
//}
