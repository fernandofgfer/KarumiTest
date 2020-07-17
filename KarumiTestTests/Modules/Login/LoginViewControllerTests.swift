@testable import KarumiTest
import XCTest

class LoginViewControllerTests: XCTestCase {
    
    var sut: LoginViewController!
    var presenter: LoginPresenterProtocolMock!
    
    override func setUpWithError() throws {
        super.setUp()
        presenter = LoginPresenterProtocolMock()
        sut = LoginViewController(presenter: presenter)
        _ = sut.view
    }

    override func tearDownWithError() throws {
        presenter = nil
        sut = nil
        super.tearDown()
    }
    
    func testContinueButtonTappedShouldCallLogginTapped() {
        // When
        sut.continueButtonTapped(sender: UIButton())
        
        // Then
        XCTAssertEqual(1, presenter.logginTappedUsernamePasswordCallsCount)
    }
    
    func testShowLoginErrorShouldShowProperlyMessage() {
        // Given
        let messageError = NSLocalizedString("error.login", comment: "")
        
        // When
        sut.showLoginError()
        
        // Then
        XCTAssertFalse(sut.errorLabel.isHidden)
        XCTAssertEqual(messageError, sut.errorLabel.text)
    }
    
    func testShowUnfilledErrorShouldShowProperlyMessage() {
        // Given
        let messageError = NSLocalizedString("error.unfilled", comment: "")
        
        // When
        sut.showUnfilledError()
        
        // Then
        XCTAssertFalse(sut.errorLabel.isHidden)
        XCTAssertEqual(messageError, sut.errorLabel.text)
    }
    
}
