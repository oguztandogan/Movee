//
//  AuthenticationOperationsRepositoryInterface.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 14.12.2020.
//

import Foundation
import RxSwift

public protocol BasicTokenOperationsRepositoryInterface {
    
    func getBasicToken(params: BasicTokenRequestModel) -> Single<BasicTokenResponseModel>
//    func getBasicToken(params: BasicTokenRequestModel) -> Single<LoginResponseModel>
}
