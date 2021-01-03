//
//  MovieListResponseModel.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 24.12.2020.
//

import Foundation

public class MovieListModel: BaseResponseProtocol {
    
    public var error: BaseErrorResponse?
    public var posterPath: String?
    public var id: Int?
    public var title: String?
    public var voteAverage: Double?
    public var overview: String?
    public var releaseDate: String?
    public var backdropPath: String?
    
    public init(posterPath: String?, id: Int?, title: String?, voteAverage: Double?, overview: String?, releaseDate: String?, backdropPath: String?) {
        self.posterPath = posterPath
        self.id = id
        self.title = title
        self.voteAverage = voteAverage
        self.overview = overview
        self.releaseDate = releaseDate
        self.backdropPath = backdropPath
    }
    
    public enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case id = "id"
        case title = "title"
        case voteAverage = "vote_average"
        case overview = "overview"
        case releaseDate = "release_date"
        case backdropPath = "backdrop_path"
    }
}
