//
//  MoviesResponseModel.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation

public class MoviesResponseModel: BaseResponseProtocol {
    
    public var error: BaseErrorResponse?
    private (set) var results: [MovieListModel?]
    
    public init(results: [MovieListModel?]) {
        self.results = results
    }
}
