//
//  BaseView.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

open class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViews()
        setupView()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViews()
        setupView()
    }
    
    open func setupView() {}
    open func addMajorViews() {}
}
