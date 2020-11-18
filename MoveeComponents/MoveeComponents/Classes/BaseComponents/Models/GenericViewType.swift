//
//  GenericViewType.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import UIKit
import Utilities

public enum GenericViewType: GenericValueProtocol {
    
    public typealias Value = String
    
    case movies
    
    public var value: String {
        switch self {
        case .movies:
            return "movies"
        }
    }
    
}
