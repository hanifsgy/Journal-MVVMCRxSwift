//
//  HomeCoordinator.swift
//  Journal-MVVMCRxSwift
//
//  Created by Hanif Sugiyanto on 20/05/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import RxSwift
import UIKit

class HomeCoordinator: BaseCoordinator<Void> {
    
    private let window: UIWindow
    private let viewControllers: [UINavigationController]
    
    init(window: UIWindow) {
        self.window = window
        self.viewControllers = HomeBarKind.items
            .map({ (items) -> UINavigationController in
                let navigation = UINavigationController()
                navigation.tabBarItem.title = items.title
                navigation.tabBarItem.image = items.icon
                return navigation
            })
    }
    
    override func start() -> Observable<CoordinationResult> {
        let viewController = HomeViewController()
        viewController.tabBar.isTranslucent = false
        viewController.viewControllers = viewControllers
        
        let coordinates = viewControllers.enumerated()
            .map { (offset, element) -> Observable<Void> in
                guard let items = HomeBarKind(rawValue: offset) else { return Observable.just(() )}
                switch items {
                case .news:
                    return coordinate(to: TodayCoordinator(navigationController: element))
                case .today:
                    return coordinate(to: TodayCoordinator(navigationController: element))
                case .profile:
                    return coordinate(to: TodayCoordinator(navigationController: element))
                }
        }
        
        Observable.merge(coordinates)
            .subscribe()
            .disposed(by: disposeBag)
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        return Observable.never()
    }
}
