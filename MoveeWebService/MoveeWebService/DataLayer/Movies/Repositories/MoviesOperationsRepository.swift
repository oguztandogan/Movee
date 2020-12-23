//
//  MoviesOperationsRepository.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation
import RxSwift

public class MoviesOperationsRepository: MoviesOperationsRepositoryInterface {
    
    private let apiRemote: MoviesOperationsRemoteInterface!
    
    public init(apiRemote: MoviesOperationsRemoteInterface) {
        self.apiRemote = apiRemote
    }

    public func getPopularMovies(params: MoviesRequestModel) -> Single<MoviesResponseModel> {
        return apiRemote.getPopularMovies(params: params)
    }
    
    public func getNowPlayingMovies(params: MoviesRequestModel) -> Single<MoviesResponseModel> {
        return apiRemote.getNowPlayingMovies(params: params)
    }

}
