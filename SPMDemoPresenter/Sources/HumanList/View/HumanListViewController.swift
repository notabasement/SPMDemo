//
//  HumanListViewController.swift
//  
//
//  Created by Sang Le on 3/23/21.
//

import ios_frameworks
import UIKit
import RxSwift
import SPMDemoDomain

public class HumanListViewController: UIViewController, StoryboardInstantiable {
    
    @IBOutlet weak var humanDetailsLabel: UIBoldLabel!
    @IBOutlet weak var imageView: UIThumbnailView!
    
    private var viewModel: HumanViewModel!
    private let disposeBag = DisposeBag()
    
    public static func create(viewModel: HumanViewModel) -> Self {
        let view = Self.instantiateInitialViewController(in: Bundle.module)
        view.viewModel = viewModel
        return view
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    private func bindViewModel() {
        
        viewModel.humans
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] humans in
                guard let self = self else { return }
                self.humanDetailsLabel.text = humans.map {
                    "name: " + $0.name + " | height: " + "\($0.height)" + " | weight: " + "\($0.weight)" + " | age: " + "\($0.age)"
                }.joined(separator: "\n")
                
                if humans.contains(where: { $0.name.hasPrefix("Test") }) {
                    self.imageView.setImage(with: URL(string: "https://i.pinimg.com/564x/a7/17/57/a7175751ff59df90d754456ec6558c29.jpg"))
                } else {
                    self.imageView.setImage(with: URL(string: "https://i.pinimg.com/236x/b7/6d/89/b76d895d2f9b48e878a82ecd9f2b445d.jpg"))
                }
            })
            .disposed(by: disposeBag)
    }
}
