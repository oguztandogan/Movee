//
//  MoviesUsecase.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation
import RxSwift

public class NowPlayingMoviesUsecase: SingleUseCase<MoviesRequestModel, NowPlayingMoviesResponseModel> {
    
    private let repository: MoviesOperationsRepositoryInterface!
    
    public init(repository: MoviesOperationsRepositoryInterface) {
        self.repository = repository
    }
    
    override func generateUseCase(parameter: MoviesRequestModel) -> Single<NowPlayingMoviesResponseModel>? {
        return repository.getNowPlayingMovies(params: parameter)
    }
}