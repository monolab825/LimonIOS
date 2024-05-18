//
//  MockedAuthService.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation
import Combine

struct MockedAuthService: AuthServiceProtocol {
    func signIn(userName: String?, password: String?) -> AnyPublisher<LoginResponse, any Error> {
        //TODO
        let mockedLoginResponse = LoginResponse(token: "MockedToken")
                
        let future = Future<LoginResponse, Error> { promise in
                       promise(.success(mockedLoginResponse))
                   }
        return future.eraseToAnyPublisher()
    }
    
    
}
