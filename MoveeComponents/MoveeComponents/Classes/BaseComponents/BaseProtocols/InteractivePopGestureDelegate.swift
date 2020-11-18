//
//  InteractivePopGestureDelegate.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 17.11.2020.
//

import UIKit

public protocol InteractivePopGestureDelegate: class {
    var initialInteractivePopGestureRecognizerDelegate: UIGestureRecognizerDelegate? { get set }
}

extension InteractivePopGestureDelegate where Self: UIViewController {
    
    // Description: It's used to reveal edge gestures to pop view controllers from navigation stack
    func setInitialInteractivePopGestureRecognizerDelegate() {
        initialInteractivePopGestureRecognizerDelegate = self.navigationController?.interactivePopGestureRecognizer?.delegate
    }
    
    func assignInteractivePopGestureToNavigationController() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = initialInteractivePopGestureRecognizerDelegate
    }
    
    func resetInteractivePopGestureForNavigationController() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }
}
