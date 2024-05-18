//
//  LoginUseCase.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation
import Combine
final class LoginUseCase: UseCaseLoginProtocol {
    
    func logIn(user: String?, password: String?) -> AnyPublisher<LoginResponse, any Error> {
        return AuthRepository(isMocked: true).signIn(userName: user, password: password)
    }
}
