//
//  NavigationState.swift
//  Ngamuk
//
//  Created by User on 23/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

enum Navigation: String {
    case menuView = "MenuViewController"
    case firstView = "FirstViewController"
    case secondView = "SecondViewController"
    
    var controller: UIViewController {
        switch self {
        case .menuView:
            return MenuViewController()
        case .firstView:
            return FirstViewController()
        case .secondView:
            return SecondViewController()
        }
    }
}
