//
//  LoginServiceModule.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 13.12.2020.
//

import Foundation

public class LoginServiceModule: ApiServiceProvider<LoginRequestModel> {
    
    init(request: LoginRequestModel) {
        super.init(method: .post, path: LoginPaths.loginUrl(request).value, pathType: .auth, isAuthRequested: true, data: request)
    }
}
