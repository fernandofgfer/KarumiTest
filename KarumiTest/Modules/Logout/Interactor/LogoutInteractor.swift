//
//  LogoutInteractor.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 12/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation

class LogoutInteractor: LogoutInteractorProtocol {
    
    weak var presenter: LogoutPresenterOutputProtocol?
    let userStore: UserStoreProtocol
    
    init(userStore: UserStoreProtocol) {
        self.userStore = userStore
    }
    
    func closeSession() {
        userStore.removeUser()
        presenter?.popInNavigation()
    }
}
