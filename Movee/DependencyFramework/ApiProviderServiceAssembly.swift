//
//  ApiProviderServiceAssembly.swift
//  Movee
//
//  Created by Oguz Tandogan on 13.12.2020.
//  Copyright © 2020 Oguz Tandogan. All rights reserved.
//

import Foundation
import Swinject
import SwinjectAutoregistration
import MoveeWebService

class ApiProviderServiceAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(LoginServices.self, initializer: LoginServices.init).inObjectScope(.weak)
        container.autoregister(BasicTokenServices.self, initializer: BasicTokenServices.init).inObjectScope(.weak)
    }
}
