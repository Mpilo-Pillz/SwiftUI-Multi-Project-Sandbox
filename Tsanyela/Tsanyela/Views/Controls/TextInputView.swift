//
//  TextInputView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/21.
//

import SwiftUI

struct TextInputView: View {
let placeholder: String
    let textValue: Binding<String>
    var body: some View {
        TextField(placeholder, text: textValue)
            .padding()
//                .textFieldStyle(RoundedBorderTextFieldStyle())
            .background(Color(.systemGray6)).cornerRadius(5.0)
    }
}

//#Preview {
//    TextInputView()
//}
