//
//  LoginView.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import SwiftUI

struct LoginView: View {
    
    //TODO: Move to viewModel
    @State private var username: String = ""
    @State private var password: String = ""

   // @ObservedObject var loginViewModel = LoginViewModel(useCase: UseCaseLogin())
    
    var body: some View{
        VStack{
            Spacer()
            Image("lemonIcon")
                .resizable()
                .frame(width: 150, height: 150)
                .aspectRatio(contentMode: .fit)
                .padding()
            Spacer()
            
            TextField("Username", text: $username)
                .padding()

            TextField("Password", text: $password)
                .padding()
            Spacer()
            
            Button("Entrar") {
                print("Pulsado")

            }
            Spacer()
            Spacer()

        }
        .padding()
    }
    
}

#Preview {
    LoginView()
}
