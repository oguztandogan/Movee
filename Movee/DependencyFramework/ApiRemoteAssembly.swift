//
//  ApiRemoteAssembly.swift
//  Movee
//
//  Created by Oguz Tandogan on 13.12.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import Foundation
import Swinject
import SwinjectAutoregistration
import MoveeWebService

class ApiRemoteAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(LoginOperationsRemoteInterface.self, initializer: LoginOperationsRemote.init).inObjectScope(.weak)
        container.autoregister(BasicTokenOperationsRemoteInterface.self, initializer: BasicTokenOperationsRemote.init).inObjectScope(.weak)
        container.autoregister(MoviesOperationsRemoteInterface.self, initializer: MoviesOperationsRemote.init).inObjectScope(.weak)
    }
}
