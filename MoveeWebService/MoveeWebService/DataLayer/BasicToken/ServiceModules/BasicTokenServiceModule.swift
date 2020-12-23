//
//  AuthenticationServiceModule.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 14.12.2020.
//

import Foundation

public class BasicTokenServiceModule: ApiServiceProvider<BasicTokenRequestModel> {
    
    init(request: BasicTokenRequestModel) {
        super.init(method: .get, path: AuthenticationPaths.getToken.value, pathType: .auth, isAuthRequested: true, data: request)
    }
}
