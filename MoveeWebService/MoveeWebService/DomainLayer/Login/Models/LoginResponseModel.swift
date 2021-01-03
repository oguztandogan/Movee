//
//  LoginResponseModel.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation

public class LoginResponseModel: BaseResponseProtocol {
    
    private(set) var success: Bool?
    private(set) var expiresAt: String?
    private(set) var requestToken: String?
    public var error: BaseErrorResponse?
    
    public init(success: Bool? = nil, expiresAt: String? = nil, requestToken: String? = nil) {
        self.success = success
        self.expiresAt = expiresAt
        self.requestToken = requestToken
    }
    
    public enum CodingKeys: String, CodingKey {
        case success = "success"
        case expiresAt = "expires_at"
        case requestToken = "request_token"
    }
}
