//
//  ApiClient.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 09/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

typealias Callback<T> = (Result<T, Error>) -> Void

protocol ApiClientProtocol {
    func fetch<T: Decodable>(resource: Resource, completion: @escaping Callback<T>)
}

struct Resource {
    let path: String
    let parameters: [String: String]
}
