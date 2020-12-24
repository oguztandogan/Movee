//
//  NowPlayingMoviesServiceModule.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation

public class NowPlayingMoviesServiceModule: ApiServiceProvider<MoviesRequestModel> {
    
    init(request: MoviesRequestModel) {
        super.init(method: .get, path: MoviesPaths.getNowPlayingMovies.value, pathType: .movies, isAuthRequested: true, data: request)
    }
}
