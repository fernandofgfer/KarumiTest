//
//  LoginPresenter.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 08/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol {
    
    weak var view: LoginViewProtocol?
    let interactor: LoginInteractorProtocol
    let router: LoginRouterProtocol
    
    init(interactor: LoginInteractorProtocol,
         router: LoginRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    func logginTapped(username: String?, password: String?) {
        guard let userame = username, let password = password else {
            view?.showUnfilledError()
            return
        }
        interactor.loggin(username: userame, password: password)
    }
    
    func viewIsReady() {
        interactor.checkIfUserIsStored()
    }
}

extension LoginPresenter: LoginPresenterOutputProtocol {
    func userReceived(user: User) {
        router.pushToLogout()
    }
    
    func errorReceived(error: Error) {
        view?.showLoginError()
    }
}
