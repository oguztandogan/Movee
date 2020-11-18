//
//  TitleWithInputComponent.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

public class TitleWithInputComponent: DataBasedComponentView<TitleWithInputComponentData> {
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, inputText])
        stackView.setCustomSpacing(5, after: titleLabel)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var titleLabel: CommonLabelComponent = {
        let label = CommonLabelComponent()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var inputText: CommonTextFieldComponent = {
        let textField = CommonTextFieldComponent()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isUserInteractionEnabled = true
        textField.borderStyle = .bezel
        return textField
    }()
    
    public override func addMajorViews() {
        super.addMajorViews()
        addSubview(mainStackView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    public override func loadDataIntoViews() {
        super.loadDataIntoViews()
        guard let data = returnData() else { return }
        titleLabel.setLabelData(data: data.titleText)
        inputText.setTextFieldData(data: data.inputText)
    }
}
