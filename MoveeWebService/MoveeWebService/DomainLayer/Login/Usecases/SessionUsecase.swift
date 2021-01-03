//
//  SessionUsecase.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 27.12.2020.
//

import Foundation
import RxSwift

public class SessionUsecase: SingleUseCase<LoginRequestModel, SessionResponseModel> {
    
    private let repository: LoginOperationsRepositoryInterface!
    
    public init(repository: LoginOperationsRepositoryInterface) {
        self.repository = repository
    }
    
    override func generateUseCase(parameter: LoginRequestModel) -> Single<SessionResponseModel>? {
        return repository.getSessionId(params: parameter)
    }
}
