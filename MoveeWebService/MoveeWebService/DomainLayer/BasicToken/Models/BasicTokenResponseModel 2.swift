//
//  GetBasicTokenResponseModel.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation

public class BasicTokenResponseModel: BaseResponseProtocol {
    
    public let success: Bool?
    public let expiresAt: String?
    public let requestToken: String?
    public var error: BaseErrorResponse?
    
    public init(success: Bool? = nil, expiresAt: String? = nil, requestToken: String? = nil) {
        self.success = success
        self.expiresAt = expiresAt
        self.requestToken = requestToken
    }
    
    public enum CodingKeys: String, CodingKey {
        case success = "success"
        case expiresAt = "expiresAt"
        case requestToken = "request_token"
    }
}
