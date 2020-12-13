//
//  RepositoryAssembly.swift
//  Movee
//
//  Created by Oguz Tandogan on 13.12.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import Foundation
import Swinject
import SwinjectAutoregistration
import MoveeWebService

class RepositoryAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(LoginOperationsRepositoryInterface.self, initializer: LoginOperationsRepository.init).inObjectScope(.container)
    }
}
