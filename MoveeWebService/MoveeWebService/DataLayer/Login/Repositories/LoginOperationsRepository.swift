//
//  LoginOperationsRepository.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import RxSwift

public class LoginOperationsRepository: LoginOperationsRepositoryInterface {
    
    private let apiRemote: LoginOperationsRemoteInterface!
    private let tokenProvider: TokenProvider!
    
    public init(apiRemote: LoginOperationsRemoteInterface, tokenProvider: TokenProvider) {
        self.apiRemote = apiRemote
        self.tokenProvider = tokenProvider
    }
    
    public func getAuthenticatedToken(params: LoginRequestModel) -> Single<LoginResponseModel> {
        return apiRemote.getAuthenticatedToken(params: params)
    }
    
    public func getSessionId(params: LoginRequestModel) -> Single<SessionResponseModel> {
        return apiRemote.getAuthenticatedToken(params: params).flatMap { (authenticatedResponse) -> Single<SessionResponseModel> in
            self.tokenProvider.setRequestToken(requestToken: authenticatedResponse.requestToken)
            return self.apiRemote.getSessionId(params: SessionRequestModel(requestToken: authenticatedResponse.requestToken))
        }
    }
}
