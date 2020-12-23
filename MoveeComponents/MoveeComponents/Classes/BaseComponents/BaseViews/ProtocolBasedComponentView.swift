//
//  ProtocolBasedComponentView.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

open class ProtocolBasedComponentView<T>: BaseView {
    
    private weak var _delegate: AnyObject?
    
    public var delegate: T? {
        get {
            return _delegate as? T
        }
        set {
            _delegate = newValue as AnyObject
        }
    }
    
    public init(frame: CGRect, delegate: T) {
        super.init(frame: frame)
        self.delegate = delegate
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func setDelegate(delegate: T) {
        self.delegate = delegate
    }
}
