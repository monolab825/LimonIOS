//
//  LoginViewModel.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation
import Combine

final class LoginViewModel: ObservableObject {
    private let tokenManager: TokenManager
    private let useCase: UseCaseLoginProtocol
    var suscriptors = Set<AnyCancellable>()
    @Published var userName = "" {
        didSet{
            showErroUsername = !checkValidUser(userName: userName)
        }
    }
    
    @Published var password = "" {
            didSet {
                showErrorPassword = !checkValidPassword(password: password)
            }
        }
    
    @Published var showErroUsername = false
    @Published var showErrorPassword = false
    @Published var showErrorLogin = false
    
    init(useCase: UseCaseLoginProtocol, tokenManager: TokenManager) {
        self.useCase = useCase
        self.tokenManager = tokenManager
    }
    
    
    func logIn() {
        useCase.logIn(user: userName, password: password)
            .sink { completion in
                print("Completion vm -> \(completion)")
            } receiveValue: { loginResponse in
                    
                self.tokenManager.token = loginResponse.token
                //TODO: Navigate to login
            }
            .store(in: &suscriptors)
    }
    
    func checkValidUser(userName: String) -> Bool{
        true
    }
    
    func checkValidPassword(password: String) -> Bool{
        true
    }
}
