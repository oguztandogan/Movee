//
//  StatusBarUtil.swift
//  Movee
//
//  Created by Oguz Tandogan on 16.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation
import UIKit

class StatusBarUtil {
    
    static let instance = StatusBarUtil()
    
    func StatusBarBackgroundColor(endpoint: UIView, color: UIColor) -> Void {
        let statusBarView = UIView(frame: UIApplication.shared.statusBarFrame)
        let statusBarColor = color
        statusBarView.backgroundColor = statusBarColor
        endpoint.addSubview(statusBarView)
    }
}
