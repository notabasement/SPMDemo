//
//  HumansRepositoryInterfaces.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation
import RxSwift

public protocol HumansRepository {
    
    func getAllHumans() -> Observable<[Human]>
}
