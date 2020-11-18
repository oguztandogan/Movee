//
//  DataBasedComponentView.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

open class DataBasedComponentView<T>: BaseView {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadDataIntoViews()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open func setData(data: T?) {
        self.data = data
        loadDataIntoViews()
    }
    
    open func returnData() -> T? {
        return self.data
    }
    
    open func loadDataIntoViews() {
    }
    
    open func returnViewType() -> GenericViewType? {
        return nil
    }
}
