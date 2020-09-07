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
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
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
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let heightSquare: Float = powf(heightSlider.value, 2.0)
        let bmi = weightSlider.value / heightSquare
        let bmiText = String(format: "%.1f", bmi)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = bmiText
        
        self.present(secondVC, animated: true, completion: nil)
    }
}
