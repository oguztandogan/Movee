//
//  SessionModel.swift
//  Movee
//
//  Created by Oguz Tandogan on 11.12.2019.
//  Copyright © 2019 Oguz Tandogan. All rights reserved.
//

import Foundation

class SessionIdServiceModel: Codable {
    
    let success: Bool?
    let session_id: String?
    
    init(success: Bool?, session_id: String?) {
        self.success = success
        self.session_id = session_id
    }
}
