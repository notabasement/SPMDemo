//
//  HumanAssembly.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import SPMDemoDomain
import Swinject
import SwinjectAutoregistration

public class HumanAssembly: Assembly {
    
    public init() { }
    
    public func assemble(container: Container) {
        container.autoregister(HumansRepository.self, name: InjectionName.HumanService.default, initializer: DefaultHumansRepository.init)
            .inObjectScope(.container)
        container.autoregister(HumansRepository.self, name: InjectionName.HumanService.test, initializer: TestHumansRepository.init)
            .inObjectScope(.container)
    }
}
