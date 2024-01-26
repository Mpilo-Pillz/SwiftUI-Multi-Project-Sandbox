//
//  LoginView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/17.
//
import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @State private var showRegistration = false
    
    @State private var navigationDestination: NavigationDestination?
    
var onLogin: () -> Void

    var body: some View {
        NavigationView {
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
            
          
                VStack {
                    Text("Forgot Password?")
                    Button("Already have an Account?") {
//                        navigationDestination = .register
                        showRegistration = true
                    }.sheet(isPresented: $showRegistration, content: {
                        RegisterView(onBack: {
                            navigationDestination = nil
                        })
                    })
                    
                    
                }
            
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
}
//
//#Preview {
//    LoginView()
//}
