//
//  SeriesDateFormatter.swift
//  Movee
//
//  Created by Oguz Tandogan on 20.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class DateFixer {
    
    
    static func getYear(enteredDate: String) -> Int? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: enteredDate) else { return nil }
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        return year
    }
    
    static func dateConfig(enteredDate: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: enteredDate) else { return nil }
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: date)
    }
}
