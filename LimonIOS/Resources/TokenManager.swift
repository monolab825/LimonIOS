//
//  TokenManager.swift
//  LimonIOS
//
//  Created by Marcos on 20/5/24.
//

import SwiftUI
import Combine

class TokenManager: ObservableObject {
    @Published var token: String = "" {
        didSet {
            print("Token changed: \(token)") // Agrega esta línea para depuración
            saveToken(token)
        }
    }
    
    private let keychain: KeychainProtocol
    
    init(keychain: KeychainProtocol = Keychain()) {
        self.keychain = keychain
        self.token = keychain.getKey(key: "TOKEN")
    }
    
    private func saveToken(_ token: String) {
        keychain.save(key: "TOKEN", value: token)
    }
    
    func deleteToken(){
        keychain.save(key: "TOKEN", value: "")
        self.token = ""
    }
}
