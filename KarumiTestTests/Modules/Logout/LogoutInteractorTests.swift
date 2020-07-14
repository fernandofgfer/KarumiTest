//
//  LogoutInteractorTests.swift
//  KarumiTestTests
//
//  Created by Fernando Garcia Fernandez on 12/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

@testable import KarumiTest
import XCTest

class LogoutInteractorTests: XCTestCase {

    var sut: LogoutInteractor!
    var presenter: LogoutPresenterOutputProtocolMock!
    var userStore: UserStoreProtocolMock!
    
    override func setUpWithError() throws {
        super.setUp()
        presenter = LogoutPresenterOutputProtocolMock()
        userStore = UserStoreProtocolMock()
        sut = LogoutInteractor(userStore: userStore)
        sut.presenter = presenter
    }

    override func tearDownWithError() throws {
        presenter = nil
        userStore = nil
        sut = nil
        super.tearDown()
    }
    
    func testCloseSessionShouldCallPopInNavigationAndRemoveUser() {
        // When
        sut.closeSession()
        
        // Then
        XCTAssertEqual(1, presenter.popInNavigationCallsCount)
        XCTAssertEqual(1, userStore.removeUserCallsCount)
    }
}
