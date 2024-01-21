//
//  TextInputView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/21.
//

import SwiftUI

struct TextInputView: View {
    let placeholder: String
//    let textValue: Binding<String> if I ever want to perform additional manipulations
    @Binding var textValue: String
    
    var isSecure = false
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $textValue)
            } else {
                TextField(placeholder, text: $textValue)
            }
        }
        
        .padding()
        //                .textFieldStyle(RoundedBorderTextFieldStyle())
        .background(Color(.systemGray6)).cornerRadius(5.0)
    }
}

//#Preview {
//    TextInputView()
//}
