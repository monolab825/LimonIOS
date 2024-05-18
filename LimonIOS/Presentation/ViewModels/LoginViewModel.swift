//
//  LoginViewModel.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    let useCase: UseCaseLoginProtocol
    
    
    init(useCase: UseCaseLoginProtocol) {
        self.useCase = useCase
    }
    
    
    func logIn(userName: String, password: String){
        
    }
    
    func logOut(){
        
    }
    
    
    
}
