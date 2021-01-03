//
//  PopularMoviesUsecase.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation
import RxSwift

public class PopularMoviesUsecase: SingleUseCase<MoviesRequestModel, PopularMoviesResponseModel> {
    
    private let repository: MoviesOperationsRepositoryInterface!
    
    public init(repository: MoviesOperationsRepositoryInterface) {
        self.repository = repository
    }
    
    override func generateUseCase(parameter: MoviesRequestModel) -> Single<PopularMoviesResponseModel>? {
        return repository.getPopularMovies(params: parameter)
    }
}
