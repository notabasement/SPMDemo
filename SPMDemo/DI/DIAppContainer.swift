//
//  DIAppContainer.swift
//  SPMDemo
//
//  Created by Sang Le on 3/24/21.
//

import Foundation
import Swinject

public final class DIAppContainer {
    
    
    public class func get() -> Container {
        
        let container = Container()
        
        // register services for apps
        
        container.register(MainViewController.self, factory: { _ in MainViewController.create() })
        
        return container
    }
}
