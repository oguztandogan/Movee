//
//  LoginOperationsRemoteInterface.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import RxSwift

public protocol LoginOperationsRemoteInterface {
    
    func getAuthenticatedToken(params: LoginRequestModel) -> Single<LoginResponseModel>
    func getSessionId(params: SessionRequestModel) -> Single<SessionResponseModel>

}
