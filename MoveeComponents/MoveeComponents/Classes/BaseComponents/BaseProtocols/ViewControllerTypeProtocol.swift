//
//  ViewControllerTypeProtocol.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit

public protocol ViewControllerTypeProtocol {
    var viewTitle: String? { get }
}

extension ViewControllerTypeProtocol {
    func returnValue() -> String? {
        return viewTitle
    }
}
