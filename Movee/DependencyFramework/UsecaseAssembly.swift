//
//  UsecaseAssembyl.swift
//  Movee
//
//  Created by Oguz Tandogan on 13.12.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import Foundation
import Swinject
import SwinjectAutoregistration
import MoveeWebService

class UsecaseAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(LoginUsecase.self, initializer: LoginUsecase.init).inObjectScope(.weak)
        container.autoregister(BasicTokenUsecase.self, initializer: BasicTokenUsecase.init).inObjectScope(.weak)
    }
}
