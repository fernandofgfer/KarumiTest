//
//  LoginRouter.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 08/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

class LoginRouter: LoginRouterProtocol {
    
    weak var view: NavigableView?
    func pushToLogout() {
        view?.pushView(LogoutAssembler().resolveLogout(), animated: true)
    }
}
