//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Rob Ranf on 9/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    // Remember we're using override here because we want to
    // override the viewDidLoad() function that comes with the
    // UIViewController superclass.
    
    // Remember we also need to use super to use the viewDidLoad
    // method because we're using the viewDidLoad method that comes
    // with UIViewController. So we override because we want to add
    // *additional* unique stuff to this func but we use super on this
    // method because we're calling this method *as is* with no changes
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
