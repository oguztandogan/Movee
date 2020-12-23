//
//  MoviesServiceModule.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation

public class PopularMoviesServiceModule: ApiServiceProvider<MoviesRequestModel> {
    
    init(request: MoviesRequestModel) {
        super.init(method: .get, path: AuthenticationPaths.getToken.value, pathType: .auth, isAuthRequested: true, data: request)
    }
}
