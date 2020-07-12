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
    
    override func setUpWithError() throws {
        super.setUp()
        presenter = LogoutPresenterOutputProtocolMock()
        sut = LogoutInteractor()
        sut.presenter = presenter
    }

    override func tearDownWithError() throws {
        presenter = nil
        sut = nil
        super.tearDown()
    }
    
    func testCloseSessionShouldCallPopInNavigation() {
        // When
        sut.closeSession()
        
        // Then
        XCTAssertEqual(1, presenter.popInNavigationCallsCount)
    }

}
