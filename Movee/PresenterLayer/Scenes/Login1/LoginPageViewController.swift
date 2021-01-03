//
//  LoginPageViewController.swift
//  Movee
//
//  Created by Oguz Tandogan on 6.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class LoginPageViewController: UIViewController {

    // MARK: - Outlets -
    @IBOutlet weak var emailInputTextField: UITextField!
    @IBOutlet weak var passwordInputTextField: UITextField!
    
    // MARK: - Public properties -

    var presenter: LoginPagePresenterInterface?

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavController()
//        presenter.viewDidLoad()
    }
    
    private func setupNavController() {
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func autologin() {
        if UserDefaults.standard.bool(forKey: "IsLoggedIn") == true{
            let tabbar: UITabBarController? = (storyboard!.instantiateViewController(withIdentifier: "tabbar") as? TabBarViewController)
            tabbar?.selectedIndex = 3
            self.navigationController?.pushViewController(tabbar!, animated: true)
            print("OGUZ auto")
        }
    }
    
    // MARK: - Actions -
    @IBAction func loginButtonAction(_ sender: Any) {
        presenter?.getLoginSessionId(username: emailInputTextField.text, password: passwordInputTextField.text)
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let forgotPasswordViewController = storyboard.instantiateViewController(identifier: "ForgotPasswordViewController" )  as? ForgotPasswordViewController else { return }
        navigationController?.pushViewController(forgotPasswordViewController, animated: true)
    }
    
    @IBAction func skipButtonAction(_ sender: Any) {
        let tabbar: TabBarViewController? = (storyboard!.instantiateViewController(withIdentifier: "tabbar") as? TabBarViewController)
        self.navigationController?.pushViewController(tabbar!, animated: true)
    }


}

// MARK: - Extensions -

extension LoginPageViewController: LoginPageViewInterface {
}
