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
