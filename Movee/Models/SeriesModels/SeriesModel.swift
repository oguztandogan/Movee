//
//  SeriesModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 13.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class SeriesModel: Codable {
    let results: [SeriesServiceModel]
    
    init(results: [SeriesServiceModel]) {
        self.results = results
    }
}

class SeriesServiceModel: Codable {

    let name: String
    let id: Int
    let vote_average: Double
    let overview: String
    let poster_path: String
    
    init(name: String, id: Int, vote_average: Double, overview: String,poster_path: String) {
        self.name = name
        self.id = id
        self.vote_average = vote_average
        self.overview = overview
        self.poster_path = poster_path
    }
}
