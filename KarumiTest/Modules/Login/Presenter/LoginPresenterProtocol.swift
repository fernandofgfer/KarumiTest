//
//  LoginPresenterProtocol.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 09/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol: AnyObject {
    func logginTapped(username: String?, password: String?)
    func viewIsReady()
}
