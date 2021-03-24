//
//  GetAllHumansUseCase.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation
import RxSwift

public protocol GetAllHumansUseCase {
    
    func execute() -> Observable<[Human]>
}

public class DefaultGetAllHumansUseCase {
    
    private let humansRepository: HumansRepository
    
    public init(humansRepository: HumansRepository) {
        self.humansRepository = humansRepository
    }
}

extension DefaultGetAllHumansUseCase: GetAllHumansUseCase {
    
    public func execute() -> Observable<[Human]> {
        return humansRepository.getAllHumans()
    }
}
