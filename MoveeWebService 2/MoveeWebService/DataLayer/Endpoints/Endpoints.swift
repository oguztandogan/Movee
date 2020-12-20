//
//  Endpoints.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import Utilities

typealias  PathType = Endpoints.PathType

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
                return "https://api.themoviedb.org/3/movie/?api_key=85f6ed635a992836f8ba2fd6fb5fa5cb"
            case .tvShows:
                return "https://api.themoviedb.org/3/tv/?api_key=85f6ed635a992836f8ba2fd6fb5fa5cb"
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
                return "/token/new/?api_key=85f6ed635a992836f8ba2fd6fb5fa5cb"
            case .login:
                return "/token/validate_with_login/?api_key=85f6ed635a992836f8ba2fd6fb5fa5cb"
            }
        }
    }
}
