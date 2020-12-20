//
//  AuthenticationOperationsRemoteInterface.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 14.12.2020.
//

import Foundation
import RxSwift

public protocol BasicTokenOperationsRemoteInterface {
    
    func getBasicToken(params: BasicTokenRequestModel) -> Single<BasicTokenResponseModel>
//    func getLoginToken(params: BasicTokenRequestModel) -> Single<LoginResponseModel>
}
