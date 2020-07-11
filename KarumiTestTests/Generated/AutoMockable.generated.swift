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
class LoginPresenterOutputProtocolMock: LoginPresenterOutputProtocol {

    //MARK: - userReceived

    var userReceivedUserCallsCount = 0
    var userReceivedUserCalled: Bool {
        return userReceivedUserCallsCount > 0
    }
    var userReceivedUserReceivedUser: User?
    var userReceivedUserReceivedInvocations: [User] = []
    var userReceivedUserClosure: ((User) -> Void)?

    func userReceived(user: User) {
        userReceivedUserCallsCount += 1
        userReceivedUserReceivedUser = user
        userReceivedUserReceivedInvocations.append(user)
        userReceivedUserClosure?(user)
    }

    //MARK: - errorReceived

    var errorReceivedErrorCallsCount = 0
    var errorReceivedErrorCalled: Bool {
        return errorReceivedErrorCallsCount > 0
    }
    var errorReceivedErrorReceivedError: Error?
    var errorReceivedErrorReceivedInvocations: [Error] = []
    var errorReceivedErrorClosure: ((Error) -> Void)?

    func errorReceived(error: Error) {
        errorReceivedErrorCallsCount += 1
        errorReceivedErrorReceivedError = error
        errorReceivedErrorReceivedInvocations.append(error)
        errorReceivedErrorClosure?(error)
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
class LoginUseCaseProtocolMock: LoginUseCaseProtocol {

    //MARK: - fetch

    var fetchUsernamePasswordCompletionCallsCount = 0
    var fetchUsernamePasswordCompletionCalled: Bool {
        return fetchUsernamePasswordCompletionCallsCount > 0
    }
    var fetchUsernamePasswordCompletionReceivedArguments: (username: String, password: String, completion: Callback<User>)?
    var fetchUsernamePasswordCompletionReceivedInvocations: [(username: String, password: String, completion: Callback<User>)] = []
    var fetchUsernamePasswordCompletionClosure: ((String, String, @escaping Callback<User>) -> Void)?

    func fetch(username: String, password: String, completion: @escaping Callback<User>) {
        fetchUsernamePasswordCompletionCallsCount += 1
        fetchUsernamePasswordCompletionReceivedArguments = (username: username, password: password, completion: completion)
        fetchUsernamePasswordCompletionReceivedInvocations.append((username: username, password: password, completion: completion))
        fetchUsernamePasswordCompletionClosure?(username, password, completion)
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
