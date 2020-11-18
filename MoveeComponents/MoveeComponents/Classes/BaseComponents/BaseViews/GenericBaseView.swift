//
//  GenericBaseView.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

open class GenericBaseView: BaseView, GenericViewProtocol {
    
    public var data: GenericViewDataProtocol?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public init(frame: CGRect, data: GenericViewDataProtocol) {
        self.data = data
        super.init(frame: frame)
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setViewData(data: GenericViewDataProtocol) {
        self.data = data
    }
}
