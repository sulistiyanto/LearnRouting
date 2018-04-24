//
//  RoutingState.swift
//  Ngamuk
//
//  Created by User on 23/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

struct RoutingState: StateType {
    var navigationState: Navigation
    
    init(navigationState: Navigation = .menuView) {
        self.navigationState = navigationState
    }
}
