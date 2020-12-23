//
//  GenericViewProtocol.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 18.11.2020.
//

import Foundation

public protocol GenericViewProtocol: class {
    
    var data: GenericViewDataProtocol? { get set }
    
}

extension GenericViewProtocol {
    func setViewData(data: GenericViewDataProtocol) { }
    func returnViewType() -> GenericViewType? {
        guard let data = data else { return nil }
        return data.viewType
    }
}
