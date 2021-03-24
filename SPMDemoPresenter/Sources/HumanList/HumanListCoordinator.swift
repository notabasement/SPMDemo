//
//  HumanListCoordinator.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation
import XCoordinator
import Swinject
import SwinjectAutoregistration

public enum HumanListRoute: Route {
    
}

public class HumanListCoordinator: ViewCoordinator<HumanListRoute> {
    
    private let assembler: Assembler
    
    public init(assembler: Assembler) {
        self.assembler = assembler
        super.init(rootViewController: assembler.resolver~>HumanListViewController.self)
    }
}
