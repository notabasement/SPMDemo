//
//  File.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation

public struct Human {
    
    public let name: String
    public let age: Int
    public let height: Double
    public let weight: Double
    
    public init(name: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
    }
}
