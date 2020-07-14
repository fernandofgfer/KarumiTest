//
//  UserStore.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 13/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
protocol UserStoreProtocol {
    func saveUser(_ user: User)
    func removeUser()
    func isUserSaved() -> User?
}

class UserStore: UserStoreProtocol {
    
    let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }
    
    func saveUser(_ user: User) {
        userDefaults.set(try? PropertyListEncoder().encode(user), forKey: "user") 
    }
    
    func isUserSaved() -> User? {
        guard let userData = userDefaults.object(forKey: "user") as? Data,
            let user = try? PropertyListDecoder().decode(User.self, from: userData) else { return nil }
        
        return user
    }
    
    func removeUser() {
        userDefaults.removeObject(forKey: "user")
    }
}
