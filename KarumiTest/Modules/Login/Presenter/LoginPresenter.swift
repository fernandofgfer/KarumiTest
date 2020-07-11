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
    var interactor: LoginInteractorProtocol
    
    init(interactor: LoginInteractorProtocol) {
        self.interactor = interactor
    }
    
    func logginTapped(username: String?, password: String?) {
        guard let userame = username, let password = password else {
            view?.showUnfilledError()
            return
        }
        interactor.loggin(username: userame, password: password)
    }
}

extension LoginPresenter: LoginPresenterOutputProtocol {
    func userReceived(user: User) {
        
    }
    
    func errorReceived(error: Error) {
        
    }
}
