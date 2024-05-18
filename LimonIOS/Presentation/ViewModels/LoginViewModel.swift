//
//  LoginViewModel.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    let useCase: UseCaseLoginProtocol
    
    
    init(useCase: UseCaseHomeProtocol) {
        self.useCase = useCase
    }
    
    
    
}
