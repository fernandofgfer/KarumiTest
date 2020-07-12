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
        let interactor = LoginInteractor(loginUseCase: getLoginUseCase())
        let router = LoginRouter()
        let presenter = LoginPresenter(interactor: interactor,
                                       router: router)
        let viewController = LoginViewController(presenter: presenter)
        presenter.view = viewController
        router.view = viewController
        interactor.presenter = presenter
        return viewController
        
    }
    
    func getLoginUseCase() -> LoginUseCaseProtocol {
        return LoginUseCase(apiClient: LoginApiClientMock())
    }
}
