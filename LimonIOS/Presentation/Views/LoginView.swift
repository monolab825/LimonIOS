//
//  LoginView.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var tokenManager: TokenManager
    @ObservedObject var loginViewModel: LoginViewModel

    
    init(tokenManager: TokenManager) {
           self.loginViewModel = LoginViewModel(useCase: LoginUseCase(), tokenManager: tokenManager)
       }
    
    var body: some View{
        Rectangle()
            .fill(Color.SecondaryCustom)
            .frame(height: 100)
            .edgesIgnoringSafeArea(.top)
        
        VStack{
            Spacer()
            Image("HomeImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Spacer()
            
            CustomTextField(text: $loginViewModel.userName, placeholder: "Usuario", isSecure: false)
                .padding()
            CustomTextField(text: $loginViewModel.password, placeholder: "Contraseña", isSecure: true)
                .padding()

            HStack{
                Spacer()
                Button("He olvidado mi contraseña o usuario"){
                    print("Pulsado")
                }
                .font(.system(size: 12))
            }
           
            
            Spacer()
            
            
            Button("Entrar") {
                loginViewModel.logIn()

            }.frame(maxWidth: .infinity)
                .padding()
                .background(Color.PrimaryCustom)
                .cornerRadius(10)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()

        }
        .padding()
    }
    
}

#Preview {
    LoginView(tokenManager: TokenManager())
}


