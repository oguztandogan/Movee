//
//  TableViewComponentData.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

public class TableViewComponentData {
    private(set) var tableRowData: Array<GenericStackViewRowComponentData>
    
    public init(tableRowData: Array<GenericStackViewRowComponentData>) {
        self.tableRowData = tableRowData
    }
    
    public func returnData() -> Array<GenericStackViewRowComponentData> {
        return tableRowData
    }




//public class TableViewComponentData: GenericDataProtocol {
//
//    private(set) var tableViewCell: AnyClass?
//    private(set) var tableViewCellIdentifier: String?
//    private(set) var backgroundColor: UIColor?
//    private(set) var seperatorStyle: UITableViewCell.SeparatorStyle?
//    private(set) var isSelectionAllowed: Bool?
//    private(set) var isBounces: Bool?
//
//    public init(tableViewCell: AnyClass?,
//                tableViewCellIdentifier: String? = "",
//                backgroundColor: UIColor? = .clear,
//                seperatorStyle: UITableViewCell.SeparatorStyle? = Optional.none,
//                isSelectionAllowed: Bool? = false,
//                isBounces: Bool? = false){
//        self.tableViewCell = tableViewCell
//        self.tableViewCellIdentifier = tableViewCellIdentifier
//        self.backgroundColor = backgroundColor
//        self.seperatorStyle = seperatorStyle
//        self.isSelectionAllowed = isSelectionAllowed
//        self.isBounces = isBounces
//    }
    
    
    
//    public func setTableViewBackgroundColor(backgroundColor: UIColor?) -> Self {
//        self.backgroundColor = backgroundColor
//        return self
//    }
//
//    public func setTableViewSeperatorStyle(seperatorStyle: UITableViewCell.SeparatorStyle) -> Self {
//        self.seperatorStyle = seperatorStyle
//        return self
//    }
//
//    public func
    
}
