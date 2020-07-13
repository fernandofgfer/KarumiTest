//
//  LoginViewController.swift
//  KarumiTest
//
//  Created by Fernando Garcia Fernandez on 08/07/2020.
//  Copyright © 2020 Fernando Garcia Fernandez. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    let presenter: LoginPresenterProtocol
    
    init(presenter: LoginPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
        setUpView()
    }
    
    private func setUpView() {
        setStyle()
        setLocalizable()
    }
    
    private func setStyle() {
        continueButton.backgroundColor = .blue
        continueButton.layer.cornerRadius = 5
        continueButton.setTitleColor(.white, for: .normal)
        
        userNameTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
    }
    
    private func setLocalizable() {
        continueButton.setTitle(NSLocalizedString("continue.title", comment: ""), for: .normal)
        userNameTextField.placeholder = NSLocalizedString("userName.placeholder", comment: "")
        passwordTextField.placeholder = NSLocalizedString("password.placeholder", comment: "")
    }
    
    @IBAction func continueButtonTapped(sender: UIButton) {
        presenter.logginTapped(username: userNameTextField.text, password: passwordTextField.text)
    }
}

extension LoginViewController: LoginViewProtocol {
    func showLoginError() {
        
    }
    
    func showUnfilledError() {
        
    }
}
