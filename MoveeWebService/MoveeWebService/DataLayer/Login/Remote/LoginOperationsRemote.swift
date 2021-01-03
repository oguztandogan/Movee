//
//  LoginOperationsRemote.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import RxSwift

public class LoginOperationsRemote: LoginOperationsRemoteInterface {
    
    private let apiManager: HttpClientInterface!
    private let service: LoginServices!
    
    public init(apiManager: HttpClientInterface, service: LoginServices) {
        self.apiManager = apiManager
        self.service = service
    }
    
    public func getAuthenticatedToken(params: LoginRequestModel) -> Single<LoginResponseModel> {
        return apiManager.executeRequest(urlRequestConvertible: service.getLoginParsedResultServiceModule(params: params))
    }
    
    public func getSessionId(params: SessionRequestModel) -> Single<SessionResponseModel> {
        return apiManager.executeRequest(urlRequestConvertible: service.getSessionParsedResultsServiceModule(params: params))
    }
    
    deinit {
        print("DEINIT LoginOperationsRemote")
    }
}
