//
//  MoviesResponseModel.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation

public class PopularMoviesResponseModel: BaseResponseProtocol {
    
    public var error: BaseErrorResponse?
    private (set) public var results: [MovieListModel?]
    
    public init(results: [MovieListModel?]) {
        self.results = results
    }
    
    public enum CodingKeys: String, CodingKey {
        case results = "results"
    }
}
