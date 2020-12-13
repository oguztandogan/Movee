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
    
    public init(apiRemote: LoginOperationsRemoteInterface) {
        self.apiRemote = apiRemote
    }
    
    public func getAuthenticatedToken(params: LoginRequestModel) -> Single<LoginResponseModel> {
        return apiRemote.getAuthenticatedToken(params: params)
    }
}
