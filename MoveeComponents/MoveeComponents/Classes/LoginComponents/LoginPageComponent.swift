//
//  LoginPageComponent.swift
//  MoveeComponents
//
//  Created by Hazal Eroglu on 18.11.2020.
//

import UIKit

public class LoginPageComponent: DataBasedComponentView<LoginPageComponentData> {
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [logoImageView, emailInputView, passwordInputView, skipAndForgotPasswordStackView, loginButton, registerStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.backgroundColor = .clear
        return stackView
    }()
    
    private lazy var skipAndForgotPasswordStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [skipButton, forgotPasswordButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.backgroundColor = .clear
        return stackView
    }()
    
    private lazy var registerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [registerInfoTitleLabel, registerButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.backgroundColor = .clear
        return stackView
    }()
    
    private lazy var logoImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var emailInputView: TitleWithInputComponent = {
        let emailInputView = TitleWithInputComponent()
        emailInputView.translatesAutoresizingMaskIntoConstraints = false
        return emailInputView
    }()
    
    private lazy var passwordInputView: TitleWithInputComponent = {
        let passwordInputView = TitleWithInputComponent()
        passwordInputView.translatesAutoresizingMaskIntoConstraints = false
        return passwordInputView
    }()
    
    private lazy var skipButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: .skipButtonAction, for: .touchUpInside)
        return button
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: .forgotPasswordButtonAction, for: .touchUpInside)
        return button
    }()
    
    private lazy var loginButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: .forgotPasswordButtonAction, for: .touchUpInside)
        return button
    }()
    
    private lazy var registerInfoTitleLabel: CommonLabelComponent = {
        let label = CommonLabelComponent()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func skipButtonAction(sender: UIButton) {
        
    }
    
    @objc func forgotPasswordButtonAction(sender: UIButton) {
        
    }
    
    @objc func loginButtonAction(sender: UIButton) {
        
    }
    
    @objc func registerButtonAction(sender: UIButton) {
        
    }
    
    public override func addMajorViews() {
        super.addMajorViews()
        addSubview(mainStackView)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    public override func loadDataIntoViews() {
        super.loadDataIntoViews()
        guard let data = returnData() else {return}
        logoImageView.image = data.logoImage
        emailInputView.setData(data: data.emailInputComponent)
        passwordInputView.setData(data: data.passwordInputComponent)
        skipButton.setTitle(data.skipButtonTitle, for: .normal)
        forgotPasswordButton.setTitle(data.forgotPasswordTitle, for: .normal)
        loginButton.setTitle(data.loginButtonTitle, for: .normal)
        registerInfoTitleLabel.setLabelData(data: data.registerInfoTitleLabel)
        registerButton.setTitle(data.registerButtonTitle, for: .normal)
    }
    
}

fileprivate extension Selector {
    static let skipButtonAction = #selector(LoginPageComponent.skipButtonAction)
    static let forgotPasswordButtonAction = #selector(LoginPageComponent.forgotPasswordButtonAction)
    static let loginButtonAction = #selector(LoginPageComponent.loginButtonAction)
    static let registerButtonAction = #selector(LoginPageComponent.registerButtonAction)

}

