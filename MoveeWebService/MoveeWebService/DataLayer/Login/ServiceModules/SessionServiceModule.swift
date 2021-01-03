//
//  SessionIdServiceModule.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 27.12.2020.
//

import Foundation

public class SessionServiceModule: ApiServiceProvider<SessionRequestModel> {
    
    init(request: SessionRequestModel) {
        super.init(method: .post, path: LoginPaths.loginSessionUrl(request).value, pathType: .auth, isAuthRequested: true, data: request)
    }
}
