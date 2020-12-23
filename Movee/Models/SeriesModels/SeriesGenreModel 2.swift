//
//  SeriesGenreService.swift
//  Movee
//
//  Created by Oguz Tandogan on 15.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class SeriesGenreModel: Codable {
    let genres: [SeriesGenreService]

    init(genres: [SeriesGenreService]) {
        self.genres = genres
    }
}
class SeriesGenreService : Codable {
    
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
