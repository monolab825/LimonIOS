//
//  Keychain.swift
//  LimonIOS
//
//  Created by Marcos on 20/5/24.
//

import Foundation
import KeychainSwift

protocol KeychainProtocol {
    func save(key: String, value: String)
    func getKey(key: String) -> String
    func deleteKey(key: String)
}


final class Keychain: KeychainProtocol {
    private let keychain = KeychainSwift()
    
    
    func save(key: String, value: String) {
        keychain.set(value, forKey: key)
    }
    
    func getKey(key: String) -> String {
        guard let value = keychain.get(key) else {
            return ""
        }
        
        return value
    }
    
    func deleteKey(key: String) {
        keychain.delete(key)
    }
    

    
}
