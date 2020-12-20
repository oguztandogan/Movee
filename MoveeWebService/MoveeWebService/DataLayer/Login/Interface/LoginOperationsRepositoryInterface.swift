//
//  LoginOperationsRepositoryInterface.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import RxSwift

public protocol LoginOperationsRepositoryInterface {
    
    func getAuthenticatedToken(params: LoginRequestModel) -> Single<LoginResponseModel>
    
}
