//
//  LogoutRouter.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 12/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

class LogoutRouter: LogoutRouterProtocol {
    
    weak var view: NavigableView?
    
    func goBackToLogin() {
        view?.pop()
    }
}
