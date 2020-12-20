//
//  CreditsUIModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 22.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class CreditsUIModel: Codable {
    
    let cast_id: Int
    let character: String
    let credit_id: String
    let gender: Int
    let id: Int
    let name: String
    let order: Int
    let profile_path: String
    let department: String
    let job: String
    
    init(cast_id: Int, character: String, credit_id: String, gender: Int, id: Int, name: String, order: Int, profile_path: String, department: String, job: String) {
        self.cast_id = cast_id
        self.character = character
        self.credit_id = credit_id
        self.gender = gender
        self.id = id
        self.name = name
        self.order = order
        self.profile_path = profile_path
        self.department = department
        self.job = job
    }
    
}
