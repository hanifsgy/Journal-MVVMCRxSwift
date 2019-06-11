//
//  AppCoordinator.swift
//  Journal-MVVMCRxSwift
//
//  Created by Hanif Sugiyanto on 20/05/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import UIKit
import RxSwift

class AppCoordinator: BaseCoordinator<Void> {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        self.window.backgroundColor = UIColor.white
    }
    
    override func start() -> Observable<CoordinationResult> {
        let homeCoordinator = HomeCoordinator(window: window)
        return self.coordinate(to: homeCoordinator)
    }
}
