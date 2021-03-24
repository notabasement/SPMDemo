//
//  HumanListContainer.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation
import Swinject
import SwinjectAutoregistration
import SPMDemoDomain

public final class HumanListContainer {
    
    public class func get(with parent: Container) -> Container {
        
        let container = Container(parent: parent)
        
        container.autoregister(HumanViewModel.self, initializer: DefaultHumanViewModel.init)
        container.autoregister(HumanListViewController.self, initializer: HumanListViewController.create)
        
        return container
    }
}
