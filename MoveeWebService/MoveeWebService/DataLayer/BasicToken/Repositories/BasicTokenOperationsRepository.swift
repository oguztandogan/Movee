//
//  AuthenticationOperationsRepository.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 14.12.2020.
//

import Foundation
import RxSwift

public class BasicTokenOperationsRepository: BasicTokenOperationsRepositoryInterface {
    
//    private let tokenProvider
    private let apiRemote: BasicTokenOperationsRemoteInterface!
    
    public init(apiRemote: BasicTokenOperationsRemoteInterface) {
        self.apiRemote = apiRemote
    }
    
    public func getBasicToken(params: BasicTokenRequestModel) -> Single<BasicTokenResponseModel> {
        return apiRemote.getBasicToken(params: params)
    }
//    public func getBasicToken(params: BasicTokenRequestModel) -> Single<LoginResponseModel> {
//        return apiRemote.getBasicToken(params: params).flatMap { (basicTokenResponse) -> Single<LoginResponseModel> in
////            self.tokenProvider = basictoken
//            return self.apiRemote.getLoginToken(params: params)
//        }
//    }
}
