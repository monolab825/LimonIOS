//
//  CustomTextfield.swift
//  LimonIOS
//
//  Created by Marcos on 18/5/24.
//

import Foundation
import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    @Binding var text: String
       var placeholder: String

       func _body(configuration: TextField<Self._Label>) -> some View {
           ZStack(alignment: .leading) {
               Text(placeholder)
                   .foregroundColor(.gray)
                   .offset(y: text.isEmpty ? 0 : -25)
                   .scaleEffect(text.isEmpty ? 1 : 0.8, anchor: .leading)
                   .animation(.easeInOut(duration: 0.2), value: text.isEmpty)
               configuration
                   .padding(.top, text.isEmpty ? 0 : 15)
                   .foregroundColor(.black)
           }
       }
}
