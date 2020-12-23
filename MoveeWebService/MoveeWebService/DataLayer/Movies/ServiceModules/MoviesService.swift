//
//  MoviesService.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation

public class MoviesServices {

    public init() {
        
    }
    
    func getPopularMoviesParsedResultModule(params: MoviesRequestModel) -> PopularMoviesServiceModule {
        return PopularMoviesServiceModule(request: params)
    }
    
    func getNowPlayingMoviesParsedResultModule(params: MoviesRequestModel) -> NowPlayingMoviesServiceModule {
        return NowPlayingMoviesServiceModule(request: params)
    }
}
