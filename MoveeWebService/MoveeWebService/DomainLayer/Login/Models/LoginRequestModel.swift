//
//  LoginRequestModel.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation

public class LoginRequestModel: CodableDataProtocol {
    
    private(set) var username: String?
    private(set) var password: String?
    private(set) var requestToken: String?
//    private(set) var apiKey: String = Endpoints.ApiKey.apiKey.value
    
    public init(username: String? = nil, password: String? = nil, requestToken: String? = nil) {
        self.username = username
        self.password = password
        self.requestToken = requestToken
    }
    
    public enum CodingKeys: String, CodingKey {
        case username = "username"
        case password = "password"
        case requestToken = "request_token"
//        case apiKey = "api_key"
    }
}
