//
//  RoutingReducer.swift
//  Ngamuk
//
//  Created by User on 24/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

func routingReducer(actions: Action, state: RoutingState?) -> RoutingState {
    var state = state ?? RoutingState()
    switch actions {
    case let routingAction as RoutingAction:
        state.navigationState = routingAction.destination
    default:
        break
    }
    return state
}
