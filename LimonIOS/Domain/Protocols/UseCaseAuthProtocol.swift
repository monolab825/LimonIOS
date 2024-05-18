//
//  UseCaseLoginProtocol.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation
import Combine

protocol UseCaseAuthProtocol {
    func login(user: String?, password: String?) -> AnyPublisher<LoginResponse, Error>
}

