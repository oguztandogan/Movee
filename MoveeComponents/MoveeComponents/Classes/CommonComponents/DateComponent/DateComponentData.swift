//
//  DateComponentData.swift
//  MoveeComponents
//
//  Created by Oguz Tandogan on 3.01.2021.
//

import UIKit

public class DateComponentData: GenericDataProtocol {
    
    private(set) var image: UIImage?
    private(set) var dateText: CommonLabelComponentData?
    
    public init(image: UIImage?,
                dateText: CommonLabelComponentData?){
        self.image = image
        self.dateText = dateText
    }
}

