//
//  MainCoordinator.swift
//  SPMDemo
//
//  Created by Sang Le on 3/23/21.
//

import XCoordinator
import SPMDemoPresenter
import SPMDemoDomain
import SPMDemoData
import Swinject
import SwinjectAutoregistration

typealias SwinContainer = Swinject.Container

enum MainRoute: Route {
    
    case main
}

class MainCoordinator: ViewCoordinator<MainRoute> {
    
    private let appContainer: SwinContainer
    private let assembler: Assembler
    
    init(container: SwinContainer, assembler: Assembler) {
        self.appContainer = container
        self.assembler = assembler
        super.init(rootViewController: MainViewController.create(), initialRoute: .main)
    }
    
    override func prepareTransition(for route: MainRoute) -> ViewTransition {
        setupDI()
        
        switch route {
        case .main:
            let assembler = Assembler(container: HumanListContainer.get(with: appContainer))
            let coordinator = HumanListCoordinator(assembler: assembler)
            return .present(coordinator)
        }
    }
    
    private func setupDI() {
        // Init app services
        assembler.apply(assemblies: [SPMDemoData.HumanAssembly(), SPMDemoDomain.HumanAssembly()])
    }
}
