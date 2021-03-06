//
//  SplashScreenViewController.swift
//  Movee
//
//  Created by Oguz Tandogan on 14.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class SplashScreenViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: SplashScreenPresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

// MARK: - Extensions -

extension SplashScreenViewController: SplashScreenViewInterface {
}
