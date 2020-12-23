//
//  LoginPageInterfaces.swift
//  Movee
//
//  Created by Oguz Tandogan on 6.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import MoveeComponents
import Utilities
import MoveeWebService

enum LoginPageNavigationOption {
    case home
    case register
    case forgotPassword
}

protocol LoginPageWireframeInterface: WireframeInterface {
}

protocol LoginPageViewInterface: ViewInterface {
}

protocol LoginPagePresenterInterface: PresenterInterface {
    func loadLoginData(username: String?, password: String?)}

protocol LoginPageFormatterInterface: FormatterInterface {
}

protocol LoginPageInteractorInterface: InteractorInterface {
    func getAuthenticatedSessionId(callback: LoginCallback, params: LoginRequestModel)
}