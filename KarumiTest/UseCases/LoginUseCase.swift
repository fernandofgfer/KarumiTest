//
//  LoginUseCASE.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 09/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
protocol LoginUseCaseProtocol {
    func fetch(username: String, password: String, completion: @escaping Callback<User>)
}

class LoginUseCase: LoginUseCaseProtocol {
    
    let apiClient: ApiClientProtocol
    
    init(apiClient: ApiClientProtocol) {
        self.apiClient = apiClient
    }
    
    func fetch(username: String, password: String, completion: @escaping Callback<User>) {
        apiClient.fetch(resource: getResource(username: username, password: password), completion: completion)
    }
    
    private func getResource(username: String, password: String) -> Resource {
        return Resource(path: "http://karumi.com/login", parameters: ["username": username, "password": password])
    }
}
