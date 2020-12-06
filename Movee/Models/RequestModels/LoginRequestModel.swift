//
//  LoginRequestModel.swift
//  Movee
//
//  Created by Hazal Eroglu on 19.11.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import Foundation

class LoginRequestModel {
    
    var username: String?
    var password: String?
    var request_token: String?
    
    init(username: String?,
         password: String?,
         request_token: String?) {
        self.username = username
        self.password = password
        self.request_token = request_token
    }
}
