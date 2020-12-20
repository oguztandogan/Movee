//
//  FavoriteModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 19.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class FavoriteModel: Codable {
    
    let status_code: Int?
    let status_message: String?

    init(status_message: String?, status_code: Int?) {
        self.status_message = status_message
        self.status_code = status_code
    }
}

class FavoriteRequestModel: Encodable {
    
    let media_type: String?
    let media_id: Int?
    let favorite: Bool?
    
    init(media_type: String?, media_id: Int?, favorite: Bool?) {
        self.media_id = media_id
        self.media_type = media_type
        self.favorite = favorite
    }
}
