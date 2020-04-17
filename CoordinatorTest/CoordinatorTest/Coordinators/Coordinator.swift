//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Thiago Martins on 16/04/20.
//  Copyright © 2020 Thiago Anderson Martins. All rights reserved.
//

import UIKit

protocol Coordinator {
    
    // Properties:
    var childCoordinators : [Coordinator] { get set }
    var navigationController : UINavigationController { get set }
    
    // Methods:
    func start()
    
}
