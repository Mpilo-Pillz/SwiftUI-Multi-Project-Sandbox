//
//  RegisterView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
         Spacer()
            Text("Register").font(.system(size: 40)).fontWeight(.bold)
            TextInputView(placeholder: "Email", textValue: $viewModel.username)
            TextInputView(placeholder: "First Name", textValue: $viewModel.username)
            TextInputView(placeholder: "Last Name", textValue: $viewModel.username)
            TextInputView(placeholder: "Password", textValue: $viewModel.password, isSecure: true)
            TextInputView(placeholder: "Confirm Password", textValue: $viewModel.password, isSecure: true)
        }
    }
}

#Preview {
    RegisterView()
}
