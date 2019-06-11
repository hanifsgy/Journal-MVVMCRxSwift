//
//  TodayCoordinator.swift
//  Journal-MVVMCRxSwift
//
//  Created by Hanif Sugiyanto on 20/05/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import RxSwift
import UIKit

class TodayCoordinator: BaseCoordinator<Void> {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() -> Observable<Void> {
        let viewController = TodayViewController()
        navigationController.setViewControllers([viewController], animated: true)
        return Observable.empty()
    }
    
}
