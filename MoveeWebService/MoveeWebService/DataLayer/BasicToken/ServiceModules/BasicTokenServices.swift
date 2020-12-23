//
//  AuthenticationServices.swift
//  MoveeWebService
//
//  Created by Oguz Tandogan on 14.12.2020.
//

import Foundation

public class BasicTokenServices {

    public init() {
        
    }
    
    func getBasicTokenParsedResultServiceModule(params: BasicTokenRequestModel) -> BasicTokenServiceModule {
        return BasicTokenServiceModule(request: params)
    }
}
