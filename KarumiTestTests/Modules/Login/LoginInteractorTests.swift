//
//  LoginInteractorTests.swift
//  KarumiTestTests
//
//  Created by Fernando Garcia Fernandez on 11/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

@testable import KarumiTest
import XCTest

class LoginInteractorTests: XCTestCase {

    var sut: LoginInteractor!
    var presenter: LoginPresenterOutputProtocolMock!
    var loginUseCase: LoginUseCaseProtocolMock!
    
    override func setUpWithError() throws {
        super.setUp()
        loginUseCase = LoginUseCaseProtocolMock()
        presenter = LoginPresenterOutputProtocolMock()
        sut = LoginInteractor(loginUseCase: loginUseCase)
        sut.presenter = presenter
    }

    override func tearDownWithError() throws {
        sut = nil
        presenter = nil
        loginUseCase = nil
        super.tearDown()
    }
    
    func testLogginWithUserShouldCallUserReceived() {
        // Given
        loginUseCase.fetchUsernamePasswordCompletionClosure = { _, _, completion in
            completion(.success(User(userId: 1, userToken: "asdasds")))
        }
        
        // When
        sut.loggin(username: "user", password: "1234")
        
        // Then
        XCTAssertEqual(1, presenter.userReceivedUserCallsCount)
    }
    
    func testLogginWithBadUserShouldCallErrorReceived() {
        // Given
        loginUseCase.fetchUsernamePasswordCompletionClosure = { _, _, completion in
            completion(.failure(NSError()))
        }
        
        // When
        sut.loggin(username: "userbad", password: "1234")
        
        // Then
        XCTAssertEqual(1, presenter.errorReceivedErrorCallsCount)
    }
}
