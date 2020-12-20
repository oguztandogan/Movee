//
//  GenericDescriptorProtocol.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 17.11.2020.
//

import Foundation

public protocol GenericDescriptorProtocol {
    
    associatedtype Value
    var description: Value { get }
}
