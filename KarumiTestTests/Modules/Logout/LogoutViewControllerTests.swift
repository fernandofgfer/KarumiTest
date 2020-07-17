//
//  LogoutViewControllerTests.swift
//  KarumiTestTests
//
//  Created by Fernando Garcia Fernandez on 17/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//
@testable import KarumiTest
import XCTest

class LogoutViewControllerTests: XCTestCase {

    var sut: LogoutViewController!
    var presenter: LogoutPresenterProtocolMock!
    
    override func setUpWithError() throws {
        presenter = LogoutPresenterProtocolMock()
        sut = LogoutViewController(presenter: presenter)
        _ = sut.view
        super.setUp()
    }

    override func tearDownWithError() throws {
        presenter = nil
        sut = nil
        super.tearDown()
    }
    
    func testLogoutButtonTappedShouldCallDidTapOnLogout() {
        // When
        sut.logoutButtonTapped(sender: UIButton())
        
        // Then
        XCTAssertEqual(1, presenter.didTapOnLogoutCallsCount)
    }

}
