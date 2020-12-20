//
//  SingleUseCase.swift
//  MoveeWebService
//
//  Created by Hazal Eroglu on 13.12.2020.
//

import Foundation
import RxSwift

public class SingleUseCase<Params, T>: BaseUseCase<Params, Single<T>> {
    
    func execute(useCaseCallBack: UseCaseCallback<T>, params: Params) {
        
        useCaseListener?.useCasePreExecute()
        
        addDisposable(disposible: self.generateUseCase(parameter: params)?.subscribe(onSuccess: { [weak self](response) in
            useCaseCallBack.onSuccess(response: response)
            self?.useCaseListener?.useCasePostExecute()
        }, onError: { [weak self](error) in
            self?.onErrorCondition(useCaseCallBack: useCaseCallBack, error: error)
            self?.useCaseListener?.useCasePostExecute()
        }))
    }
    
    private func onErrorCondition(useCaseCallBack: UseCaseCallback<T>, error: Error) {
        guard let errorModule = error as? GenericErrorResponseModule, let error = errorModule.errorResponse else { return }
        useCaseCallBack.onError(error: error)
    }
    
    deinit {
        print("DEINIT SingleUseCase")
    }
}
