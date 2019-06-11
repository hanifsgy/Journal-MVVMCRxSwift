//
//  HomeBarKind.swift
//  Journal-MVVMCRxSwift
//
//  Created by Hanif Sugiyanto on 20/05/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import UIKit

enum HomeBarKind: Int {
    case news
    case today
    case profile
    
    var title: String? {
        switch self {
        case .news:
            return "News"
        case .today:
            return "Today"
        case .profile:
            return "Profile"
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .news:
            return #imageLiteral(resourceName: "Web")
        case .today:
            return #imageLiteral(resourceName: "Time")
        case .profile:
            return #imageLiteral(resourceName: "Travellers")
        }
    }
    
    var navigationController: UINavigationController {
        let navigation = UINavigationController()
        navigation.tabBarItem.title = self.title
        navigation.tabBarItem.image = self.icon
        return navigation
    }
}
