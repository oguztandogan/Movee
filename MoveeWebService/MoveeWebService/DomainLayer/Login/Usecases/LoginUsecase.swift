//
//  LoginUsecase.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import RxSwift

public class LoginUsecase: SingleUseCase<LoginRequestModel, LoginResponseModel> {
    
    private let repository: LoginOperationsRepositoryInterface!
    
    public init(repository: LoginOperationsRepositoryInterface) {
        self.repository = repository
    }
    
    override func generateUseCase(parameter: LoginRequestModel) -> Single<LoginResponseModel>? {
        return repository.getAuthenticatedToken(params: parameter)
    }
}
