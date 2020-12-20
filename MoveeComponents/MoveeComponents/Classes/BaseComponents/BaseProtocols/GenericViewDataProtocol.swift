//
//  GenericViewDataProtocol.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import Foundation

public protocol GenericViewDataProtocol {
    
    var viewType: GenericViewType? { get set }
    
}

extension GenericViewDataProtocol {
    func returnViewType() -> GenericViewType? {
        return viewType
    }
}
