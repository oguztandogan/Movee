//
//  CommonTextFieldComponent.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

public class CommonTextFieldComponent: DynamicAttributedTextField<CommonTextFieldComponentData> {
    
    public override func loadData() {
        super.loadData()
        guard let data = returnData() else { return }
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = data.lineSpacing
        paragraphStyle.alignment = data.allignment
        
        if let attributedInfoText = data.attributedText {
            // Use attributed string is it is provided
            attributedText = attributedInfoText
            return
        }
        
        var attributedString = NSMutableAttributedString()
        attributedString = NSMutableAttributedString(string: data.text ?? "",
                                         attributes: [NSAttributedString.Key.kern : data.kernValue,
                                                     NSAttributedString.Key.paragraphStyle : paragraphStyle,
                                                     NSAttributedString.Key.font : data.textFont,
                                                     NSAttributedString.Key.foregroundColor : data.textColor])
        attributedText = attributedString
    }
}
