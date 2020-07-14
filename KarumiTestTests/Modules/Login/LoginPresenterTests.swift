//
//  LoginPresenterTests.swift
//  KarumiTestTests
//
//  Created by Fernando Garcia Fernandez on 11/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

@testable import KarumiTest
import XCTest

class LoginPresenterTests: XCTestCase {
    
    var sut: LoginPresenter!
    var interactor: LoginInteractorProtocolMock!
    var router: LoginRouterProtocolMock!
    var view: LoginViewProtocolMock!
    
    override func setUpWithError() throws {
        super.setUp()
        interactor = LoginInteractorProtocolMock()
        router = LoginRouterProtocolMock()
        view = LoginViewProtocolMock()
        sut = LoginPresenter(interactor: interactor, router: router)
        sut.view = view
    }

    override func tearDownWithError() throws {
        sut = nil
        view = nil
        router = nil
        interactor = nil
        super.tearDown()
    }
    
    func testLoginWithCredentialsShouldCallToLoggin() {
        // Given
        let userName = "user"
        let password = "1234"
        
        // When
        sut.logginTapped(username: userName, password: password)
        
        // Then
        XCTAssertEqual(1, interactor.logginUsernamePasswordCallsCount)
    }

    func testLoginWithoutUsernameShouldCallShowUnfilledError() {
        // Given
        let password = "1234"
        
        // When
        sut.logginTapped(username: nil, password: password)
        
        // Then
        XCTAssertEqual(1, view.showUnfilledErrorCallsCount)
    }
    
    func testLoginWithoutPasswordShouldCallShowUnfilledError() {
        // Given
        let userName = "user"
        
        // When
        sut.logginTapped(username: userName, password: nil)
        
        // Then
        XCTAssertEqual(1, view.showUnfilledErrorCallsCount)
    }
    
    func testUserReceivedShouldCallPushToLogout() {
        // Given
        let user = User(userId: 1, userToken: "asdasd")
        
        // When
        sut.userReceived(user: user)
        
        // Then
        XCTAssertEqual(1, router.pushToLogoutCallsCount)
    }
    
    func testErrorReceivedShouldCallShowLoginError() {
        // When
        sut.errorReceived(error: NSError())
        
        // Then
        XCTAssertEqual(1, view.showLoginErrorCallsCount)
    }
    
    func testViewIsReadyShouldCallCheckIfUserIsStored() {
        // When
        sut.viewIsReady()
        
        // Then
        XCTAssertEqual(1, interactor.checkIfUserIsStoredCallsCount)
    }
    
}
