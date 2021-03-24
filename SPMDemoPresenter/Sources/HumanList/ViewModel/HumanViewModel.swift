//
//  HumanViewModel.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import Foundation
import SPMDemoDomain
import RxSwift

public protocol HumanViewModelInput {
    
}

public protocol HumanViewModelOutput {
    
    var humans: Observable<[Human]> { get }
}

public protocol HumanViewModel: HumanViewModelInput, HumanViewModelOutput { }

public class DefaultHumanViewModel: HumanViewModel {
    
    private let getAllHumansUseCase: GetAllHumansUseCase
    
    public init(getAllHumansUseCase: GetAllHumansUseCase) {
        self.getAllHumansUseCase = getAllHumansUseCase
    }
}

extension DefaultHumanViewModel:  HumanViewModelOutput {
    
    public var humans: Observable<[Human]> {
        getAllHumansUseCase.execute().share(replay: 1)
    }
}
