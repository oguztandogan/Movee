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
    
    func navigate(to option: LoginPageNavigationOption) {
        switch option {
        case .home:
            openHome()
        case .register:
            presentRegister()
        case .forgotPassword:
            print("asdf")
        }

    }

    private func openHome() {
//        let wireframe = HomeWireframe()
//
//        navigationController?.pushWireframe(wireframe)
    }

    private func presentRegister() {
//        let wireframe = RegisterWireframe()
//
//        let wireframeNavigationController = PokedexNavigationController()
//        wireframeNavigationController.setRootWireframe(wireframe)
//
//        navigationController?.present(wireframeNavigationController, animated: true, completion: nil)

    }
}

