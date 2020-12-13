//
//  UseCaseCallback.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 13.12.2020.
//

import Foundation

class UseCaseCallback<T>: UseCaseCallbackInteractor {
    typealias Response = T
    
    var onSuccessCompletion: ((T) -> Void)?
    var onErrorCompletion: ((BaseErrorResponse) -> Void)?
    var onCallBackResultCompletion: ((Result<T, BaseErrorResponse>) -> Void)?
    
    func onSuccess(response: T) {
        onSuccessCompletion?(response)
        onCallBackResultCompletion?(.success(response))
    }
    
    func onError(error: BaseErrorResponse) {
        onErrorCompletion?(error)
        onCallBackResultCompletion?(.failure(error))
    }
    
    func onSuccess(completion: @escaping (T) -> Void) {
        onSuccessCompletion = completion
    }
    
    func onError(completion: @escaping (BaseErrorResponse) -> Void) {
        onErrorCompletion = completion
    }
    
    func commonResult(completion: @escaping (Result<T, BaseErrorResponse>) -> Void) {
        onCallBackResultCompletion = completion
    }
    
}
