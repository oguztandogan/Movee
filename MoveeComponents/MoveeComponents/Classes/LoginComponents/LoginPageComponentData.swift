//
//  LoginPageComponentData.swift
//  MoveeComponents
//
//  Created by Hazal Eroglu on 18.11.2020.
//

import UIKit

public class LoginPageComponentData: GenericDataProtocol {
    
    private(set) var backgroundImage: UIImage?
    private(set) var logoImage: UIImage?
    private(set) var emailInputComponent: TitleWithInputComponentData?
    private(set) var passwordInputComponent: TitleWithInputComponentData?
    private(set) var skipButtonTitle: String?
    private(set) var forgotPasswordTitle: String?
    private(set) var loginButtonTitle: String?
    private(set) var registerInfoTitleLabel: CommonLabelComponentData?
    private(set) var registerButtonTitle: String?
    
    public init(backgroundImage: UIImage?,
                logoImage: UIImage?,
                emailInputComponent: TitleWithInputComponentData?,
                passwordInputComponent: TitleWithInputComponentData?,
                skipButtonTitle: String?,
                forgotPasswordTitle: String?,
                loginButtonTitle: String?,
                registerInfoTitleLabel: CommonLabelComponentData?,
                registerButtonTitle: String?){
        self.backgroundImage = backgroundImage
        self.logoImage = logoImage
        self.emailInputComponent = emailInputComponent
        self.passwordInputComponent = passwordInputComponent
        self.skipButtonTitle = skipButtonTitle
        self.forgotPasswordTitle = forgotPasswordTitle
        self.loginButtonTitle = loginButtonTitle
        self.registerInfoTitleLabel = registerInfoTitleLabel
        self.registerButtonTitle = registerButtonTitle
    }
    
}
