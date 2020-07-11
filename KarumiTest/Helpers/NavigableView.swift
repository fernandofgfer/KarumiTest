//
//  NavigableView.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 11/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation
import UIKit

protocol NavigableView: class {
    func pushView(_ view: Presentable, animated: Bool)
    func presentView(_ view: Presentable, animated: Bool)
    func presentView(_ view: Presentable, animated: Bool, completion: (() -> Void)?)
    func dismiss()
    func pop()
    func closeNavigation()
}

extension UIViewController: NavigableView {
    func pushView(_ view: Presentable, animated: Bool) {
        guard view is UIViewController else { return }

        if let nav = self as? UINavigationController {
            nav.pushViewController(view as! UIViewController, animated: animated)
            return
        }
        
        self.navigationController?.pushViewController(view as! UIViewController, animated: animated)
    }
    
    func presentView(_ view: Presentable, animated: Bool) {
        self.presentView(view, animated: animated, completion: nil)
    }
    
    func presentView(_ view: Presentable, animated: Bool, completion: (() -> Void)?) {
        guard let viewController = view as? UIViewController else { return }
        present(viewController, animated: animated, completion: completion)
    }
    
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func pop() {
        guard let nav = self.navigationController else {
            self.dismiss()
            return
        }
        
        if navigationController?.viewControllers.count == 1 {
            nav.dismiss()
            return
        }
        
        nav.popViewController(animated: true)
    }
    
    func closeNavigation() {
        guard let nav = self.navigationController else {
            self.dismiss()
            return
        }
        
        nav.dismiss()
    }
}

protocol Presentable: AnyObject {}
extension UIViewController: Presentable {}
