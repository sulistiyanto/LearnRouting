//
//  AppRouter.swift
//  Ngamuk
//
//  Created by User on 24/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

enum Segue {
    case push, present, dismiss, back
}

final class AppRouter {
    let navigationController: UINavigationController
    
    init(window: UIWindow) {
        navigationController = UINavigationController()
        window.rootViewController = navigationController
        // 1
        store.subscribe(self) {
            $0.select {
                $0.routingState
            }
        }
    }
    
    // 2
    fileprivate func pushViewController(state: Navigation, animated: Bool) {
        let viewController = state.controller
        viewController.title = state.rawValue
        
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    //pop root
}

// MARK: - StoreSubscriber
// 3
extension AppRouter: StoreSubscriber {
    
    func newState(state: RoutingState) {
        // 4
        let shouldAnimate = navigationController.topViewController != nil
        // 5
        pushViewController(state: state.navigationState, animated: shouldAnimate)
    }
}
