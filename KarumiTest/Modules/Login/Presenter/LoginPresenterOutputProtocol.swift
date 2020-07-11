//
//  LoginPresenterOutputProtocol.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 11/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

protocol LoginPresenterOutputProtocol: AnyObject {
    func userReceived(user: User)
    func errorReceived(error: Error)
}
