//
//  LogoutAssembler.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 12/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

protocol LogoutAssemblerProtocol {
    func resolveLogout() -> LogoutViewController
}

class LogoutAssembler: LogoutAssemblerProtocol {
    
    func resolveLogout() -> LogoutViewController {
        
        let router = LogoutRouter()
        let interactor = LogoutInteractor()
        let presenter = LogoutPresenter(interactor: interactor, router: router)
        let viewController = LogoutViewController(presenter: presenter)
        interactor.presenter = presenter
        
        return viewController
    }
    
}
