//
//  UseCaseLoginProtocol.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation
import Combine
protocol UseCaseLoginProtocol {
    func logIn(user: String?, password: String?) -> AnyPublisher<LoginResponse, Error>
    //func signUp(user: String?, password: String?) -> AnyPublisher<LoginResponse, Error>
}
