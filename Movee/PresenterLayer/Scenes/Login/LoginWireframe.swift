//
//  LoginWireframe.swift
//  Movee
//
//  Created by Hazal Eroglu on 17.11.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class LoginWireframe: BaseWireframe {

    // MARK: - Private properties -

    // MARK: - Module setup -

    init() {
        let moduleViewController = LoginViewController()
        super.init(viewController: moduleViewController)

        let formatter = LoginFormatter()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(view: moduleViewController, formatter: formatter, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension LoginWireframe: LoginWireframeInterface {
}
