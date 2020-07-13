//
//  LoginInteractor.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 08/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorProtocol {
    
    let loginUseCase: LoginUseCaseProtocol
    let userStore: UserStoreProtocol
    weak var presenter: LoginPresenterOutputProtocol?
    
    init(loginUseCase: LoginUseCaseProtocol,
         userStore: UserStoreProtocol) {
        self.loginUseCase = loginUseCase
        self.userStore = userStore
    }
    
    func loggin(username: String, password: String) {
        loginUseCase.fetch(username: username, password: password) {[weak self] result in
            switch result {
            case .success(let user):
                self?.userReceived(user: user)
            case .failure(let error):
                self?.errorReceived(error: error)
            }
        }
    }
    
    func checkIfUserIsStored() {
        guard let user = userStore.isUserSaved() else { return }
        presenter?.userReceived(user: user)
    }
    
    
    private func userReceived(user: User) {
        userStore.saveUser(user)
        presenter?.userReceived(user: user)
    }
    
    private func errorReceived(error: Error) {
        presenter?.errorReceived(error: error)
    }
}
