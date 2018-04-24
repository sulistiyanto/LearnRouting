//
//  SecondViewController.swift
//  Ngamuk
//
//  Created by User on 23/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit
import ReSwift

class SecondViewController: UIViewController {
    
    lazy var button = UIButton()
    
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
