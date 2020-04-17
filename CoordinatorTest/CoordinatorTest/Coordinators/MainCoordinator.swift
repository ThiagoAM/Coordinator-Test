//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by Thiago Martins on 16/04/20.
//  Copyright © 2020 Thiago Anderson Martins. All rights reserved.
//

import UIKit

class MainCoordinator : Coordinator {
    
    // Properties:
    // - Coordinator Protocol:
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
        
    // Initialization:
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    // Coordinator Protocol Methods:
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    // Navigation Methods:
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
        
}
