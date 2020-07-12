//
//  LogoutViewController.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 12/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation
import UIKit

class LogoutViewController: UIViewController {
    
    @IBOutlet weak var logoutButton: UIButton!
    
    let presenter: LogoutPresenterProtocol
    
    init(presenter: LogoutPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "LogoutViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logoutButtonTapped(sender: UIButton) {
        presenter.didTapOnLogout()
    }
    
}
