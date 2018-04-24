//
//  FirstViewController.swift
//  Ngamuk
//
//  Created by User on 24/04/18.
//  Copyright © 2018 User. All rights reserved.
//
import ReSwift
import UIKit

class FirstViewController: UIViewController {
    
    lazy var button = UIButton()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self) {
            $0.select {
                $0.firstState
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        
        let margins = view.layoutMarginsGuide
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.backgroundColor = .blue
        button.setTitle("Back", for: UIControlState.normal)
        button.topAnchor.constraint(equalTo: margins.topAnchor, constant: 16).isActive = true
        button.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
    }
}

extension FirstViewController: StoreSubscriber {
    
    func newState(state: FirstState) {
        
    }
}
