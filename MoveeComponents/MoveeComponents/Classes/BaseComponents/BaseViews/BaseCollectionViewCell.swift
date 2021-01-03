//
//  BaseCollectionViewCell.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

open class BaseCollectionViewCell: UICollectionViewCell {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViews()
        setupViewConfigurations()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViews()
        setupViewConfigurations()
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    open func setupViewConfigurations() {}
    open func addMajorViews() {}
}
