//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderDidChange(_ sender: UISlider) {
        var userHeight: Float
        userHeight = sender.value
        heightLabel.text = "\(String(format: "%.2f", userHeight))m"
     }

    @IBAction func weightSliderDidChange(_ sender: UISlider) {
        var userWeight: Float
        userWeight = sender.value
        weightLabel.text = "\(String(format: "%.0f", userWeight))Kg"
    }
}
