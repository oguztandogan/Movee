//
//  deneme.swift
//  Movee
//
//  Created by Oguz Tandogan on 14.12.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import Foundation
import MoveeWebService

public class DenemeInteractor: AssemblerWireframeInteractorProtocol {
    
    private var usecase: BasicTokenUsecase?
    
    func getBasicToken(callback: BasicTokenCallback, params: BasicTokenRequestModel) {
        usecase = returnResolver().resolve(BasicTokenUsecase.self)
        usecase?.execute(useCaseCallBack: callback, params: params)
    }
}
