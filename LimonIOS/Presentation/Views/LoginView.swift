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
            Image("HomeImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Spacer()
            
            TextField("Usuario", text: $username)
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.white)
                .overlay(
                    VStack {
                        Spacer()
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                    }
                )
                .foregroundColor(.gray)
            TextField("Password", text: $password)
                .padding()
            Button("He olvidado mi contraseña o usuario"){
                print("Pulsado")
            }
            Spacer()
            
            
            Button("Entrar") {
                print("Pulsado")

            }.frame(maxWidth: .infinity)
                .padding()
                .background(Color.Primary)
                .cornerRadius(10)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()

        }
        .padding()
    }
    
}

#Preview {
    LoginView()
}
