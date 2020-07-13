//
//  UserStore.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 13/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

protocol UserStoreProtocol {
    func saveUser(_ user: User)
    func isUserSaved() -> Bool
}

class UserStore: UserStoreProtocol {
    
    let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }
    
    func saveUser(_ user: User) {
        userDefaults.set(user, forKey: "user")
    }
    
    func isUserSaved() -> Bool {
        return (userDefaults.object(forKey: "user") as? User) != nil
    }
}
