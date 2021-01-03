//
//  SessionResponseModel.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 27.12.2020.
//

import Foundation

public class SessionResponseModel: BaseResponseProtocol {
    
    private(set) var success: Bool?
    private(set) var sessionId: String?
    public var error: BaseErrorResponse?
    
    public init(success: Bool? = nil, sessionId: String? = nil) {
        self.success = success
        self.sessionId = sessionId
    }
    
    public enum CodingKeys: String, CodingKey {
        case success = "success"
        case sessionId = "session_id"
    }
}
