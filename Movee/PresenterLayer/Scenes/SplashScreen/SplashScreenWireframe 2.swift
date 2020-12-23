//
//  SplashScreenWireframe.swift
//  Movee
//
//  Created by Oguz Tandogan on 14.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class SplashScreenWireframe: BaseWireframe {
    
    // MARK: - Private properties -
    
    private let storyboard = UIStoryboard(name: "SplashScreen", bundle: nil)
    
    // MARK: - Module setup -
    
    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: SplashScreenViewController.self)
        super.init(viewController: moduleViewController)
        
        let formatter = SplashScreenFormatter()
        let interactor = SplashScreenInteractor()
        let presenter = SplashScreenPresenter(view: moduleViewController, formatter: formatter, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }
    
}

// MARK: - Extensions -

extension SplashScreenWireframe: SplashScreenWireframeInterface {
    
    func navigate(option: SplashScreenNavigationOption) {
        switch option {
        case .login:
            presentLogin()
        }
    }
    
    private func presentLogin() {
        navigationController?.setRootWireframe(LoginPageWireframe())
        
    }
}

