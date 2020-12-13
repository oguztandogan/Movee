//
//  LoginResponseModel.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation

public class LoginResponseModel: BaseResponseProtocol {
    
    private(set) var success: String?
    private(set) var expiresAt: String?
    private(set) var requestToken: String?
    public var error: BaseErrorResponse?
    
    public init(success: String? = nil, expiresAt: String? = nil, requestToken: String? = nil) {
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
