//
//  MoviesOperationsRemote.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation
import RxSwift

public class MoviesOperationsRemote: MoviesOperationsRemoteInterface {
    
    private let apiManager: HttpClientInterface!
    private let service: MoviesServices!

    public init(apiManager: HttpClientInterface, service: MoviesServices) {
        self.apiManager = apiManager
        self.service = service
    }

    public func getPopularMovies(params: MoviesRequestModel) -> Single<MoviesResponseModel> {
        return apiManager.executeRequest(urlRequestConvertible: service.getPopularMoviesParsedResultModule(params: params))
    }
    
    public func getNowPlayingMovies(params: MoviesRequestModel) -> Single<MoviesResponseModel> {
        return apiManager.executeRequest(urlRequestConvertible: service.getNowPlayingMoviesParsedResultModule(params: params))
    }
    

    deinit {
        print("DEINIT LoginOperationsRemote")
    }
}
