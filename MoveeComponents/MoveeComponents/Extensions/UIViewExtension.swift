//
//  UIViewExtension.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

extension UIView {
    
    public func startPressedAnimationCommon(withDuration: CGFloat = 0.3, completion: @escaping (_ finish: Bool) -> Void) {
        
        self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        
        UIView.animate(withDuration: TimeInterval(withDuration),
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.8),
                       initialSpringVelocity: CGFloat(6.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
                        
                        self.transform = CGAffineTransform.identity
                        
                       }, completion: completion)
        
        self.layoutIfNeeded()
    }
    
    public func visibilityManager(activate: Bool, animated: Bool = true) {
        if animated {
            UIView.transition(with: self,
                              duration: 0.3,
                              options: .transitionCrossDissolve,
                              animations: { [weak self] in
                                self?.alpha = activate ? 1 : 0
                              })
        } else {
            alpha = activate ? 1 : 0
        }
    }
}
