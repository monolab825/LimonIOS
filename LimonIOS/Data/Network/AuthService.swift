//
//  AuthServices.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation
import Combine

protocol AuthServiceProtocol{
    func signIn(userName: String?, password: String?) -> AnyPublisher<LoginResponse, Error>
    //func signUp(user: User) -> AnyPublisher<User, Error>
}

struct AuthService {
    func signIn(userName: String?, password: String?) -> AnyPublisher<LoginResponse, any Error> {
        fatalError("Unimplemented error")
    }
    
    
}
