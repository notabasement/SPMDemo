//
//  HumanAssembly.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation
import Swinject
import SwinjectAutoregistration

public class HumanAssembly: Assembly {
    
    public init() { }
    
    public func assemble(container: Container) {
        container.register(GetAllHumansUseCase.self, factory: { resolver in
            DefaultGetAllHumansUseCase.init(humansRepository: resolver~>(HumansRepository.self, name: InjectionName.HumanService.default))
        })
    }
}
