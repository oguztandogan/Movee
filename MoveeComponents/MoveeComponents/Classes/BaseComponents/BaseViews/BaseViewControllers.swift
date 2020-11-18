//
//  BaseViewControllers.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

open class BaseViewController: UIViewController, ViewControllerTypeProtocol {
    
    open var viewTitle: String? { return nil }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareViewControllerConfigurations()
    }
    
    public static var identifier: String {
        return String(describing: self)
    }
    
    open func prepareViewControllerConfigurations() {
        setViewControllerName()
    }
    
    private func setViewControllerName() {
        title = returnValue()
    }
}
