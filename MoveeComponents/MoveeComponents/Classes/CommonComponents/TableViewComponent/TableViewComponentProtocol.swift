//
//  TableViewComponentProtocol.swift
//  MoveeComponents
//
//  Created by Hazal Eroglu on 4.01.2021.
//

import Foundation

public protocol TableViewComponentProtocol: AnyObject {
    func getNumberOfItems() -> Int
    func getItem(index: Int) -> GenericViewDataProtocol?
}
