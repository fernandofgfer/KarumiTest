//
//  LogoutPresenter.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 12/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

class LogoutPresenter: LogoutPresenterProtocol {
    
    let interactor: LogoutInteractorProtocol
    let router: LogoutRouterProtocol
    
    init(interactor: LogoutInteractorProtocol,
         router: LogoutRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    
    func didTapOnLogout() {
        interactor.closeSession()
    }
}

extension LogoutPresenter: LogoutPresenterOutputProtocol {
    func popInNavigation() {
        router.goBackToLogin()
    }
}
