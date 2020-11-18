//
//  GenericValueProtocol.swift
//  Utilities
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import Foundation

public protocol GenericValueProtocol {
    
    associatedtype Value
    var value: Value { get }
}
