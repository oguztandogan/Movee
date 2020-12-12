//
//  UseCaseCallbackInteractor.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 13.12.2020.
//

import Foundation

protocol UseCaseCallbackInteractor {
    
    associatedtype Response
    
    var onSuccessCompletion: ((Response) -> Void)? { get }
    
    func onSuccess(response: Response)
    func onError(error: ErrorResponse)
    
    func onSuccess(completion: @escaping (Response) -> Void)
    func onError(completion: @escaping (ErrorResponse) -> Void)
    func commonResult(completion: @escaping (Result<Response, ErrorResponse>) -> Void)
    
}
