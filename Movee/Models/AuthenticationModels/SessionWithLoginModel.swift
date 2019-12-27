//
//  SessionWithLoginModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 11.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class SessionWithLoginModel: Codable {

    let request_token: String?
    let success: Bool?
    let expires_at: String?
    
    init(request_token: String?, success: Bool?, expires_at: String?) {

        self.request_token = request_token
        self.success = success
        self.expires_at = expires_at
    }
}
