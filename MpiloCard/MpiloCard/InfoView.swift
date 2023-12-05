//
//  InfoView.swift
//  MpiloCard
//
//  Created by Mpilo Pillz on 2023/12/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .padding(.all)
            .overlay {
                HStack {
                    Image(systemName: imageName).foregroundStyle(Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00))
                    Text(text)
                }
                
            }
    }
}

#Preview {
    InfoView(text: "defualt text", imageName: "phone.fill").previewLayout(.sizeThatFits)
}
