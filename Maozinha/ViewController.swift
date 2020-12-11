//
//  ViewController.swift
//  Maozinha
//
//  Created by Erick Almeida on 17/11/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let SwitchViewController = UIHostingController(rootView: SwitchViews())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChild(SwitchViewController)
        view.addSubview(SwitchViewController.view)
        setupConstraints()
        
    }

    fileprivate func setupConstraints() {
        
        SwitchViewController.view.translatesAutoresizingMaskIntoConstraints = false
        SwitchViewController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        SwitchViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        SwitchViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        SwitchViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

    }

}

