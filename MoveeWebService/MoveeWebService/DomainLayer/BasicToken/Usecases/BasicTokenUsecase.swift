//
//  GetBasicTokenUsecase.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation
import RxSwift

public class BasicTokenUsecase: SingleUseCase<BasicTokenRequestModel, BasicTokenResponseModel> {
    
    private let repository: BasicTokenOperationsRepositoryInterface!
    
    public init(repository: BasicTokenOperationsRepositoryInterface) {
        self.repository = repository
    }
    
    override func generateUseCase(parameter: BasicTokenRequestModel) -> Single<BasicTokenResponseModel>? {
        return repository.getBasicToken(params: parameter)
    }
}

//public class BasicTokenUsecase2: SingleUseCase<BasicTokenRequestModel, LoginResponseModel> {
//
//    private let repository: BasicTokenOperationsRepositoryInterface!
//
//    public init(repository: BasicTokenOperationsRepositoryInterface) {
//        self.repository = repository
//    }
//    override func generateUseCase(parameter: BasicTokenRequestModel) -> Single<LoginResponseModel>? {
//        return repository.getBasicToken(params: parameter)
//    }
//}
