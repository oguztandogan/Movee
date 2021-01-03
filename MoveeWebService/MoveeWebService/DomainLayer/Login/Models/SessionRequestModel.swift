//
//  SessionIdRequestModel.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 27.12.2020.
//

import Foundation

public class SessionRequestModel: CodableDataProtocol {
    
    private(set) var requestToken: String?
//    private(set) var apiKey: String? = Endpoints.ApiKey.apiKey.value

    public init(requestToken: String? = nil) {
        self.requestToken = requestToken
    }
    
    public enum CodingKeys: String, CodingKey {
        case requestToken = "request_token"
//        case apiKey = "api_key"
    }
}
