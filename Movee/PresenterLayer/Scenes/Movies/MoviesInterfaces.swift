//
//  MoviesInterfaces.swift
//  Movee
//
//  Created by Hazal Eroglu on 23.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import MoveeWebService

protocol MoviesWireframeInterface: WireframeInterface {
}

protocol MoviesViewInterface: ViewInterface {
}

protocol MoviesPresenterInterface: PresenterInterface {
    func getNowPlayingMovies()
}

protocol MoviesFormatterInterface: FormatterInterface {
    func loadNowPlayingMoviesData(model: NowPlayingMoviesResponseModel?)
    func loadPopularMoviesData(model: PopularMoviesResponseModel?)
}

protocol MoviesInteractorInterface: InteractorInterface {
    func fetchPopularMovies(callback: PopularMoviesCallback, params: MoviesRequestModel)
    func fetchNowPlayingMovies(callback: NowPlayingMoviesCallback, params: MoviesRequestModel)
}
