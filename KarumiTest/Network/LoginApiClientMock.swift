//
//  LoginApiClientMock.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 11/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

class LoginApiClientMock: ApiClientProtocol {
    
    func fetch<T>(resource: Resource, completion: @escaping Callback<T>) where T: Decodable {
        guard let path = Bundle.main.path(forResource: "getUserSuccess", ofType: "json") else {
            completion(.failure(NSError()))
            return
        }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let model = try JSONDecoder().decode(T.self, from: data)
            completion(.success(model))
        } catch {
            completion(.failure(NSError()))
        }
    }
}
