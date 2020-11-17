//
//  BaseWireframe.swift
//  Movee
//
//  Created by Hazal Eroglu on 17.11.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import UIKit

public protocol WireframeInterface: class {
    func push(to type: Wirefames, navigationType: WireframeNavigationType)
    func popToDestinationWireFrame(destinationView: WireframeDestinationType)
    func pushAndRemoveYourself(to type: Wireframes)
    func dissmissYourself()
    func show(type: Wireframes)
    func changeRoot(to wireframe: Wireframes)
    func displayWarningPopup(data : WarningPopupWireframeData, completion: @escaping () -> Void)
}

extension WireframeInterface {
    
}

public protocol WireframeDataProtocol {
    
}

public class BaseWireframe {
    
    private unowned var _viewController: UIViewController
    
    //to retain view controller reference upon first access
    private var _temporaryStoredViewController: UIViewController?
    
    init(viewController: UIViewController) {
        _temporaryStoredViewController = viewController
        _viewController = viewController
    }
    
    public func chageRoot(to wireframe: Wireframes) {
        if let navController = viewController as? UINavigationController {
            navController.viewControllers = [wireframe.value.viewController]
        } else if let navController = navigationController {
            navController.viewControllers = [_viewController]
        }
    }
    
    public func push(to type: Wireframes, navigationType: WireframeNavigationType) {
        let wireFrame = type.value
        switch navigationType {
        case .push:
            if let navigationController = navigationController {
                navigationController.pushWireframe(wireFrame)
            } else {
                viewController.pushWireframeFromViewController(wireFrame)
            }
        case .present:
            if let navigationController = navigationController {
                navigationController.presentWireFrame(wireFrame)
            } else {
                viewController.presentWireframeFromViewController(wireFrame)
            }
        }
    }
    public func popToDestinationWireframe(destinationView: WireframeDestinationType) {
        guard let vc = navigationController?.viewControllers.filter({ (controller) -> Bool in
            if controller.isKind(of: destinationView.value) {
                return true
            } else {
                return false
            }
        }).first else { return }
        navigationController?.popToViewController(vc, animatec: true)
    }
    
}
