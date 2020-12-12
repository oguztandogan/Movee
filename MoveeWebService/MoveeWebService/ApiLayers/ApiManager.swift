//
//  ApiManager.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 19.11.2020.
//

import Foundation
import Alamofire
import RxSwift

public class ApiManager: HttpClientInterface {
    
    // MARK: - To manage Alamofire requests -
    private var session = Session()
    
    // MARK: - To decode JSON response -
    private var jsonDecoder = JSONDecoder()
    
    init(interceptor: ApiInterceptor, eventMonitors: ApiEventMonitor) {

            let configuration = URLSessionConfiguration.ephemeral
            configuration.timeoutIntervalForRequest = 60
            configuration.requestCachePolicy = .reloadIgnoringCacheData

            session = Session(configuration: configuration, startRequestsImmediately: true, interceptor: interceptor, eventMonitors: [eventMonitors])

        }
    
    // MARK: - Single Stream Methods -
    public func executeRequest<R>(urlRequestConvertible: URLRequestConvertible) -> Single<R> where R: CodableDataProtocol{
        
        return Single.create { [weak self] (single) -> Disposable in
            
            self?.session.request(urlRequestConvertible).validate().response(completionHandler: { (alamofireResponseData) in
                self?.responseParser(alamofireResponseData: alamofireResponseData, single: single)
            })
            
            return Disposables.create()
        }
    }
    
    public func responseParser<R>(alamofireResponseData: AFDataResponse<Data?>, single: (SingleEvent<R>) -> Void) where R: CodableDataProtocol {
        
        switch alamofireResponseData.result {
        case .failure(let error):
            single(.error(GenericErrorResponseModule(errorResponse: BaseErrorResponse(errorCode: returnErrorCode(error: error), errorMessage: error.localizedDescription, success: false), apiConnectionErrorType: .serverError(returnErrorCode(error: error)))))
            
        case .success(let data):
            if let data = data {
                
                do {
                    let dataDecoded = try jsonDecoder.decode(R.self, from: data)
                    single(.success(dataDecoded))
                } catch let error {
                    print("error : \(error)")
                }
            }
        }
    }
}
