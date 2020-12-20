//
//  SearchingUIModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 4.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class SearchingUIModel {
    let posterPath: String?
    let id: Int?
    let backdropPath: String?
    let mediaType: String?
    let name: String?
    let title: String?
    let profilePath: String?
    var cast: String?
    
    init(posterPath: String?, id: Int?, backdropPath: String?, mediaType: String?, name: String?, title: String?, profile_path: String?, cast: String?) {
        self.posterPath = posterPath
        self.id = id
        self.backdropPath = backdropPath
        self.mediaType = mediaType
        self.name = name
        self.title = title
        self.profilePath = profile_path
        self.cast = cast
    }
}
