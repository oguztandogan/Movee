//
//  AuthenticationOperationsRemote.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 14.12.2020.
//

import Foundation
import RxSwift

//public class BasicTokenOperationsRemote: BasicTokenOperationsRemoteInterface {
//
//    private let apiManager: HttpClientInterface!
//    private let service: LoginServices!
//
//    public init(apiManager: HttpClientInterface, service: LoginServices) {
//        self.apiManager = apiManager
//        self.service = service
//    }
//
//    // TODO
//    public func getBasicToken(params: BasicTokenRequestModel) -> Single<BasicTokenResponseModel> {
//        return apiManager.executeRequest(urlRequestConvertible: service.getLoginParsedResultServiceModule(params: params))
//    }
//
//    deinit {
//        print("DEINIT LoginOperationsRemote")
//    }
//}

public class BasicTokenOperationsRemote: BasicTokenOperationsRemoteInterface {
    public func getLoginToken(params: BasicTokenRequestModel) -> Single<LoginResponseModel> {
        return apiManager.executeRequest(urlRequestConvertible: service.getBasicTokenParsedResultServiceModule(params: params))
    }
    
    
        private let apiManager: HttpClientInterface!
        private let service: BasicTokenServices!
    
        public init(apiManager: HttpClientInterface, service: BasicTokenServices) {
            self.apiManager = apiManager
            self.service = service
        }
    
        // TODO
        public func getBasicToken(params: BasicTokenRequestModel) -> Single<BasicTokenResponseModel> {
            return apiManager.executeRequest(urlRequestConvertible: service.getBasicTokenParsedResultServiceModule(params: params))
        }
    
        deinit {
            print("DEINIT LoginOperationsRemote")
        }
}
