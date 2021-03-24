//
//  MainViewController.swift
//  SPMDemo
//
//  Created by Sang Le on 3/23/21.
//

import UIKit
import ios_frameworks

class MainViewController: UIViewController, StoryboardInstantiable {

    static func create() -> Self {
        return Self.instantiateInitialViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

