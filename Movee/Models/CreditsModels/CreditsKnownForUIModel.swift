//
//  CreditsKnownForUIModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 28.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class CreditsKnownForUIModel: Codable {
    
    let character: String?
    let title: String
    let gender: Int?
    let release_date: String
    let poster_path: String
    let media_type: String
    let id: Int?
    
    init(character: String?, title: String, gender: Int?, release_date: String, poster_path: String, media_type: String, id: Int?) {
        self.character = character
        self.title = title
        self.gender = gender
        self.release_date = release_date
        self.poster_path = poster_path
        self.media_type = media_type
        self.id = id
    }
}
