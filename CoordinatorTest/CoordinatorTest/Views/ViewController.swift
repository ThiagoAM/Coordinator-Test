//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by Thiago Martins on 16/04/20.
//  Copyright © 2020 Thiago Anderson Martins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    // Properties:
    // - External References:
    weak var coordinator: MainCoordinator?
    
    // Overridden Methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // IB Actions:
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }
    
}

