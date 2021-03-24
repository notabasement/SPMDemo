//
//  TestHumansRepository.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import SPMDemoDomain
import RxSwift

public class TestHumansRepository {
    
    public init() { }
}

extension TestHumansRepository: HumansRepository {
    
    public func getAllHumans() -> Observable<[Human]> {
        return .just([Human(name: "TestJohn", age: 15, height: 180, weight: 70),
                      Human(name: "TestAna", age: 21, height: 160, weight: 92)])
    }
}
