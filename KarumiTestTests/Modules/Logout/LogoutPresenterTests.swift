//
//  LogoutPresenterTests.swift
//  KarumiTestTests
//
//  Created by Fernando Garcia Fernandez on 12/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

@testable import KarumiTest
import XCTest

class LogoutPresenterTests: XCTestCase {

    var sut: LogoutPresenter!
    var interactor: LogoutInteractorProtocolMock!
    var router: LogoutRouterProtocolMock!
    
    override func setUpWithError() throws {
        super.setUp()
        interactor = LogoutInteractorProtocolMock()
        router = LogoutRouterProtocolMock()
        sut = LogoutPresenter(interactor: interactor, router: router)
    }

    override func tearDownWithError() throws {
        sut = nil
        router = nil
        interactor = nil
        super.tearDown()
    }
    
    func testDidTapOnLogoutShouldCallCloseSession() {
        // When
        sut.didTapOnLogout()
        
        // Then
        XCTAssertEqual(1, interactor.closeSessionCallsCount)
    }
    
    func testPopInNavigationShouldCallGoBackToLogin() {
        // When
        sut.popInNavigation()
        
        // Then
        XCTAssertEqual(1, router.goBackToLoginCallsCount)
    }
}
