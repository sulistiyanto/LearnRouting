//
//  AppReducer.swift
//  Ngamuk
//
//  Created by User on 24/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(routingState: routingReducer(actions: action, state: state?.routingState),
                    firstState: firstReducer(action: action),
                    secondState: secondReducer(action: action))
}
