//
//  NowPlayingMoviesResponseModel.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 29.12.2020.
//

import Foundation

public class NowPlayingMoviesResponseModel: BaseResponseProtocol {
    
    public var error: BaseErrorResponse?
    private (set) public var results: [MovieListModel?]
    
    public init(results: [MovieListModel?]) {
        self.results = results
    }
}
