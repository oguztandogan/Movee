//
//  MovieUIModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 12.11.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class MovieUIModel {
    var poster_path: String?
    var id: Int?
    var title: String?
    var vote_average: String?
    var overview: String?
    var release_date: String?
    var runtime: String?
    var genres: String?
    var backdrop_path: String?
    var favorite: Bool?

    init(poster_path : String?, id: Int?, title : String?, vote_average : String?, overview : String?, release_date : String?, runtime :String?, genres: String?, backdrop_path: String?, favorite: Bool?) {
        self.poster_path = poster_path
        self.id = id
        self.title = title
        self.vote_average = vote_average
        self.overview = overview
        self.release_date = release_date
        self.runtime = runtime
        self.genres = genres
        self.backdrop_path = backdrop_path
        self.favorite = favorite
    }
    
    init(id: Int?) {
        self.id = id
    }
}
