//
//  MoviesRequestModel.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation

public class MoviesRequestModel: CodableDataProtocol {

    private(set) var apiKey: String? = Endpoints.ApiKey.apiKey.value
    
    public init() {}
    
    public enum CodingKeys: String, CodingKey {

        case apiKey = "api_key"
    }
}
