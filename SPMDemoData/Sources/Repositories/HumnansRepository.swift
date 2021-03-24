//
//  HumnansRepository.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation
import SPMDemoDomain
import RxSwift

public class DefaultHumansRepository: HumansRepository {
    
    public func getAllHumans() -> Observable<[Human]> {
        return .just([Human(name: "John", age: 15, height: 180, weight: 70),
                      Human(name: "Ana", age: 21, height: 160, weight: 92),
                      Human(name: "Babe", age: 40, height: 170, weight: 55),
                      Human(name: "Gogo", age: 32, height: 192, weight: 90)])
    }
}

