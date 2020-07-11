@testable import KarumiTest
// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif














class LoginInteractorProtocolMock: LoginInteractorProtocol {

    //MARK: - loggin

    var logginUsernamePasswordCallsCount = 0
    var logginUsernamePasswordCalled: Bool {
        return logginUsernamePasswordCallsCount > 0
    }
    var logginUsernamePasswordReceivedArguments: (username: String, password: String)?
    var logginUsernamePasswordReceivedInvocations: [(username: String, password: String)] = []
    var logginUsernamePasswordClosure: ((String, String) -> Void)?

    func loggin(username: String, password: String) {
        logginUsernamePasswordCallsCount += 1
        logginUsernamePasswordReceivedArguments = (username: username, password: password)
        logginUsernamePasswordReceivedInvocations.append((username: username, password: password))
        logginUsernamePasswordClosure?(username, password)
    }

}
class LoginRouterProtocolMock: LoginRouterProtocol {

    //MARK: - pushToLogout

    var pushToLogoutCallsCount = 0
    var pushToLogoutCalled: Bool {
        return pushToLogoutCallsCount > 0
    }
    var pushToLogoutClosure: (() -> Void)?

    func pushToLogout() {
        pushToLogoutCallsCount += 1
        pushToLogoutClosure?()
    }

}
class LoginViewProtocolMock: LoginViewProtocol {

    //MARK: - showUnfilledError

    var showUnfilledErrorCallsCount = 0
    var showUnfilledErrorCalled: Bool {
        return showUnfilledErrorCallsCount > 0
    }
    var showUnfilledErrorClosure: (() -> Void)?

    func showUnfilledError() {
        showUnfilledErrorCallsCount += 1
        showUnfilledErrorClosure?()
    }

    //MARK: - showLoginError

    var showLoginErrorCallsCount = 0
    var showLoginErrorCalled: Bool {
        return showLoginErrorCallsCount > 0
    }
    var showLoginErrorClosure: (() -> Void)?

    func showLoginError() {
        showLoginErrorCallsCount += 1
        showLoginErrorClosure?()
    }

}
