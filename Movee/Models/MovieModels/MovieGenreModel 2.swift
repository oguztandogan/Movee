//
//  MovieGenreModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 12.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation
import UIKit

class MovieGenreModel: Codable {
    let genres: [MovieGenreService]

    init(genres: [MovieGenreService]) {
        self.genres = genres
    }
}
class MovieGenreService : Codable {
    
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
