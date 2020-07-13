//
//  LoginInteractorProtocol.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 09/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

/// sourcery: AutoMockable
protocol LoginInteractorProtocol {
    func loggin(username: String, password: String)
    func checkIfUserIsStored()
}
