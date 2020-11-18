//
//  DynamicAttributedTextField.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

open class DynamicAttributedTextField<T>: UITextField {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        prepareTextFieldConfigurations()
        setupTextFieldSettings()
    }
    
    public init(frame: CGRect, data: T?) {
        self.data = data
        super.init(frame: frame)
        prepareTextFieldConfigurations()
        setupTextFieldSettings()
        loadData()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func prepareTextFieldConfigurations() {
        
    }
    
    public func setupTextFieldSettings() {
        contentMode = .center
        textAlignment = .left
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    open func setTextFieldData(data: T? = nil) {
        self.data = data
        loadData()
    }
    
    open func loadData() {
        
    }
    
    open func returnData() -> T? {
        return data
    }
}
