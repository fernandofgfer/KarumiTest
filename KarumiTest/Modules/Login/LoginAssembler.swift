//
//  LoginAssembler.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 08/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

protocol LoginAssemblerProtocol {
    func resolveLogin() -> LoginViewController
}

class LoginAssembler: LoginAssemblerProtocol {
    
    func resolveLogin() -> LoginViewController {
        let interactor = resolveInteractor()
        let router = LoginRouter()
        let presenter = LoginPresenter(interactor: interactor,
                                       router: router)
        let viewController = LoginViewController(presenter: presenter)
        presenter.view = viewController
        router.view = viewController
        interactor.presenter = presenter
        return viewController
        
    }
    
    private func resolveInteractor() -> LoginInteractor {
        return LoginInteractor(loginUseCase: resolveLoginUseCase(), userStore: resolveUserStore())
    }
    
    private func resolveUserStore() -> UserStoreProtocol {
        return UserStore(userDefaults: UserDefaults.standard)
    }
    
    private func resolveLoginUseCase() -> LoginUseCaseProtocol {
        return LoginUseCase(apiClient: LoginApiClientMock())
    }
}
