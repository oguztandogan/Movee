//
//  AccountStates.swift
//  Movee
//
//  Created by Oguz Tandogan on 23.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class AccountStatesModel: Codable {
    
    let id: Int?
    let favorite: Bool?
    
    init(id: Int?, favorite: Bool?) {
        self.id = id
        self.favorite = favorite
    }
}
