//
//  DynamicAttributedLabel.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

open class DynamicAttributedLabel<T>: UILabel {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        prepareLabelConfigurations()
        setupLabelSettings()
    }
    
    public init(frame: CGRect, data: T?) {
        self.data = data
        super.init(frame: frame)
        prepareLabelConfigurations()
        setupLabelSettings()
        loadData()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func prepareLabelConfigurations() {
        
    }
    
    public func setupLabelSettings() {
        numberOfLines = 0
        contentMode = .center
        textAlignment = .center
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    open func setLabelData(data: T? = nil) {
        self.data = data
        loadData()
    }
    
    open func loadData() {
        
    }
    
    open func returnData() -> T? {
        return data
    }
}
