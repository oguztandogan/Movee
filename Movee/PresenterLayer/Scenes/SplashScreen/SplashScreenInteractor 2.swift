//
//  SplashScreenInteractor.swift
//  Movee
//
//  Created by Oguz Tandogan on 14.12.2020.
//  Copyright (c) 2020 Oguz Tandogan. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import MoveeWebService

final class SplashScreenInteractor: AssemblerWireframeInteractorProtocol {

    private var usecase: BasicTokenUsecase?

}

// MARK: - Extensions -

extension SplashScreenInteractor: SplashScreenInteractorInterface {
    
    func getBasicToken(callback: BasicTokenCallback, params: BasicTokenRequestModel) {
        usecase = returnResolver().resolve(BasicTokenUsecase.self)
        usecase?.execute(useCaseCallBack: callback, params: params)
    }
}
