//
//  TokenResponseModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 11.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

struct TokenResponseModel: Codable {
    
    let success: Bool?
    let expires_at: String?
    let request_token: String?
    
    init(success: Bool?,
         expires_at: String?,
         request_token: String?) {
        self.success = success
        self.expires_at = expires_at
        self.request_token = request_token
    }
}
