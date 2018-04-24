//
//  MenuViewController.swift
//  Ngamuk
//
//  Created by User on 24/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit
import ReSwift

class MenuViewController: UIViewController {
    
    lazy var buttonFirst = UIButton()
    lazy var buttonSecond = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let margin = view.layoutMarginsGuide
        
        // add first button
        view.addSubview(buttonFirst)
        buttonFirst.translatesAutoresizingMaskIntoConstraints = false
        buttonFirst.layer.cornerRadius = 5
        buttonFirst.layer.borderWidth = 1
        buttonFirst.backgroundColor = .blue
        buttonFirst.setTitle("First", for: UIControlState.normal)
        buttonFirst.topAnchor.constraint(equalTo: margin.topAnchor, constant: 36).isActive = true
        buttonFirst.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        buttonFirst.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        
        // add second button
        view.addSubview(buttonSecond)
        buttonSecond.translatesAutoresizingMaskIntoConstraints = false
        buttonSecond.layer.cornerRadius = 5
        buttonSecond.layer.borderWidth = 1
        buttonSecond.backgroundColor = .blue
        buttonSecond.setTitle("Second", for: UIControlState.normal)
        buttonSecond.topAnchor.constraint(equalTo: buttonFirst.bottomAnchor, constant: 16).isActive = true
        buttonSecond.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        buttonSecond.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        
        buttonFirst.addTarget(self, action: #selector(firstAction), for: .touchUpInside)
        buttonSecond.addTarget(self, action: #selector(secondButton), for: .touchUpInside)
    }
    
    @objc func firstAction() {
        let routeDestination: Navigation = .firstView
        store.dispatch(RoutingAction(destination: routeDestination))
    }
    
    @objc func secondButton() {
        let routeDestination: Navigation = .secondView
        store.dispatch(RoutingAction(destination: routeDestination))
    }
    
}
