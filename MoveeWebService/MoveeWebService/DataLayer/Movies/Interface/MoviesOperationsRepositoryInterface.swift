//
//  MovieOperationsRepositoryInterface.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation
import RxSwift

public protocol MoviesOperationsRepositoryInterface {
    
    func getPopularMovies(params: MoviesRequestModel) -> Single<PopularMoviesResponseModel>
    func getNowPlayingMovies(params: MoviesRequestModel) -> Single<NowPlayingMoviesResponseModel>
}
