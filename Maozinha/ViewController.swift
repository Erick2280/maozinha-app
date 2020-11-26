//
//  ViewController.swift
//  Maozinha
//
//  Created by Erick Almeida on 17/11/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let onboardingViewController = UIHostingController(rootView: onboardingView())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChild(onboardingViewController)
        view.addSubview(onboardingViewController.view)
        setupConstraints()
        
    }

    fileprivate func setupConstraints() {
        
        onboardingViewController.view.translatesAutoresizingMaskIntoConstraints = false
        onboardingViewController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        onboardingViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        onboardingViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        onboardingViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

    }

}

