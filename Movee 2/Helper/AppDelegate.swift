//
//  AppDelegate.swift
//  Movee
//
//  Created by Oguz Tandogan on 31.10.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let initialNavigationController = RootNavigationController()
        initialNavigationController.setRootWireframe(LoginPageWireframe())
        
        self.window = UIWindow(frame: UIScreen.main.bounds)

        self.window?.rootViewController = initialNavigationController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

