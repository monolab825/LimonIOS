//
//  CustomTextfield.swift
//  LimonIOS
//
//  Created by Marcos on 18/5/24.
//

import Foundation
import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var isSecure: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .leading) {
                Text(placeholder)
                    .foregroundColor(.gray)
                    .offset(y: text.isEmpty ? 0 : -25)
                    .scaleEffect(text.isEmpty ? 1 : 0.8, anchor: .leading)
                    .animation(.easeInOut(duration: 0.2), value: text.isEmpty)
                
                if isSecure {
                    SecureField("", text: $text)
                        .padding(.top, text.isEmpty ? 0 : 15)
                        .foregroundColor(.black)
                } else {
                    TextField("", text: $text)
                        .padding(.top, text.isEmpty ? 0 : 15)
                        .foregroundColor(.black)
                }
            }
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
        }
    }
}
