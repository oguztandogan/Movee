//
//  SplashScreenPresenter.swift
//  Movee
//
//  Created by Oguz Tandogan on 14.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import MoveeWebService
import SwiftKeychainWrapper

final class SplashScreenPresenter {

    // MARK: - Private properties -

    private unowned let view: SplashScreenViewInterface
    private let formatter: SplashScreenFormatterInterface
    private let interactor: SplashScreenInteractorInterface
    private let wireframe: SplashScreenWireframeInterface
    
    private let basicTokenCallback = BasicTokenCallback()

    // MARK: - Lifecycle -

    init(view: SplashScreenViewInterface, formatter: SplashScreenFormatterInterface, interactor: SplashScreenInteractorInterface, wireframe: SplashScreenWireframeInterface) {
        self.view = view
        self.formatter = formatter
        self.interactor = interactor
        self.wireframe = wireframe
    }
    
    internal func getBasicToken() {
        basicTokenCallback.commonResult { [weak self] (result) in
            self?.handleBasicTokenResponse(result: result)
        }
        interactor.getBasicToken(callback: basicTokenCallback, params: BasicTokenRequestModel())
    }
    private func handleBasicTokenResponse(result: Result<BasicTokenResponseModel, BaseErrorResponse>) {
        switch result {
        case .failure(let error):
            print(error)
        case .success(let success):
            print(success)
            KeychainWrapper.standard.set(success.requestToken ?? "", forKey: "BasicToken")
            wireframe.navigate(option: .login)
        }
    }
}

// MARK: - Extensions -

extension SplashScreenPresenter: SplashScreenPresenterInterface {
    func viewDidLoad() {
        getBasicToken()
    }
}
