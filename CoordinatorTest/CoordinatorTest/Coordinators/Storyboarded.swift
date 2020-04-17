//
//  Storyboarded.swift
//  CoordinatorTest
//
//  Created by Thiago Martins on 16/04/20.
//  Copyright © 2020 Thiago Anderson Martins. All rights reserved.
//

import UIKit

protocol Storyboarded {
    
    // Static Methods:
    static func instantiate() -> Self
    
}

extension Storyboarded where Self : UIViewController {
    
    // Static Methods:
    static func instantiate() -> Self {
        
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(identifier: className) as! Self                        
    }
    
}
