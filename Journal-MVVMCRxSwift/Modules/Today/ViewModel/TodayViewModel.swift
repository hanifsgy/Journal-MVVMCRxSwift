//
//  TodayViewModel.swift
//  Journal-MVVMCRxSwift
//
//  Created by Hanif Sugiyanto on 20/05/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import RxSwift
import RxCocoa

class TodayViewModel: ViewModelType {
    
    var input: Input
    var output: Output!
    
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    private let navigator: TodayNavigator
    
    init(navigator: TodayNavigator) {
        self.navigator = navigator
        
        input = Input()
        output = Output()
    }
}
