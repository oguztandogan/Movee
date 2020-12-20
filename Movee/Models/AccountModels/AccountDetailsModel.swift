//
//  AccountDetailsModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 19.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class AccountDetailsModel: Codable {
    
    let id: Int?
    let name: String?
    let username: String?
    
    init(id: Int?, name: String?, username: String?) {
        self.name = name
        self.username = username
        self.id = id
    }
}
