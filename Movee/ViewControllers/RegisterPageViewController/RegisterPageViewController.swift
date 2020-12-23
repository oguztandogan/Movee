//
//  RegisterPageViewController.swift
//  Movee
//
//  Created by Oguz Tandogan on 10.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import UIKit
import WebKit

class RegisterPageViewController: UIViewController, WKNavigationDelegate {

    enum constants {
        static let registerWebUrl = URL(string: "https://www.themoviedb.org/account/signup")
    }
    
    var registerWebPage: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerWebPage.load(URLRequest(url: constants.registerWebUrl!))
        
        let refreshButton = UIBarButtonItem(barButtonSystemItem: .refresh, target: registerWebPage, action: #selector(registerWebPage.reload))
        toolbarItems = [refreshButton]
        navigationController?.isToolbarHidden = false
    }
    
    override func loadView() {
        registerWebPage = WKWebView()
        registerWebPage.navigationDelegate = self
        view = registerWebPage
    }

}
