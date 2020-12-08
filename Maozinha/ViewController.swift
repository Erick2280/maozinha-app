//
//  ViewController.swift
//  Maozinha
//
//  Created by Erick Almeida on 17/11/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let introScreenViewController = UIHostingController(rootView: introScreenView())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChild(introScreenViewController)
        view.addSubview(introScreenViewController.view)
        setupConstraints()
        
    }

    fileprivate func setupConstraints() {
        
        introScreenViewController.view.translatesAutoresizingMaskIntoConstraints = false
        introScreenViewController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        introScreenViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        introScreenViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        introScreenViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

    }

}

