//
//  AuthRepository.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation
import Combine
struct AuthRepository: AuthServiceProtocol {
    
    let isMocked: Bool
    
    init(isMocked: Bool) {
        self.isMocked = isMocked
    }
    
    func signIn(userName: String?, password: String?) -> AnyPublisher<LoginResponse, any Error> {
        if(!isMocked){
           return AuthService().signIn(userName: userName, password: password)
        }else{
           return MockedAuthService().signIn(userName: userName, password: password)
        }
    }
    
    
    
    
}
