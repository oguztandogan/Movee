//
//  Endpoints.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import Utilities

typealias PathType = Endpoints.PathType
typealias ApiKey = Endpoints.ApiKey
typealias LoginPaths = Endpoints.LoginPaths
typealias AuthenticationPaths = Endpoints.AuthenticationPaths
typealias MoviesPaths = Endpoints.MoviesPaths

public enum Endpoints {
        
    public enum PathType: GenericValueProtocol {
        case auth
        case movies
        case tvShows
        
        public typealias Value = String
        
        public var value: String {
            switch self {
            case .auth:
                return "https://api.themoviedb.org/3/authentication"
            case .movies:
                return "https://api.themoviedb.org/3/movie"
            case .tvShows:
                return "https://api.themoviedb.org/3/tv"
            }
        }
    }
    
    public enum ApiKey: GenericValueProtocol {
        case apiKey
        
        public typealias Value = String
        
        public var value: String {
            switch self {
            case .apiKey:
                return "85f6ed635a992836f8ba2fd6fb5fa5cb"
            }
        }
    }
    
    public enum AuthenticationPaths: GenericValueProtocol {
        public typealias Value = String
        
        case getToken
        case login
        
        public var value: String {
            switch self {
            case .getToken:
                return "/token/new"
            case .login:
                return "/token/validate_with_login?api_key=85f6ed635a992836f8ba2fd6fb5fa5cb"
            }
        }
    }
    
    public enum LoginPaths: GenericValueProtocol {
        public typealias Value = String
        
        case loginUrl(LoginRequestModel)
        case loginSessionUrl
        
        public var value: String {
            switch self {
            case .loginUrl:
                return String(format: "/token/validate_with_login?api_key=85f6ed635a992836f8ba2fd6fb5fa5cb")
            case .loginSessionUrl:
                return String(format: "/session/new?api_key=85f6ed635a992836f8ba2fd6fb5fa5cb")
            }
        }
    }
    
    public enum MoviesPaths: GenericValueProtocol {
        public typealias Value = String
        
        case getPopularMovies
        case getNowPlayingMovies
        
        public var value: String {
            switch self {
            case .getNowPlayingMovies:
                return String(format: "/now_playing")
            case .getPopularMovies:
                return String(format: "/popular")
            }
        }
    }
}
