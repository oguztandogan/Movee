//
//  TitleWithInputComponentData.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit
import Utilities

public class TitleWithInputComponentData: GenericDataProtocol {
    
    private(set) var titleText: CommonLabelComponentData?
    private(set) var inputText: CommonTextFieldComponentData?
    
    public init(titleText: CommonLabelComponentData?,
                inputText: CommonTextFieldComponentData?) {
        self.titleText = titleText
        self.inputText = inputText
    }
}
