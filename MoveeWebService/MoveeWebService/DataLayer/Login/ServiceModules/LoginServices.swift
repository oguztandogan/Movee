//
//  LoginServices.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation

public class LoginServices {

    public init() {
        
    }
    
    func getLoginParsedResultServiceModule(params: LoginRequestModel) -> LoginServiceModule {
        return LoginServiceModule(request: params)
    }
    func getSessionParsedResultsServiceModule(params: SessionRequestModel) -> SessionServiceModule {
        return SessionServiceModule(request: params)
    }
}
