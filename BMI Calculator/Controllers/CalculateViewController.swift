//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Rob Ranf on 9/15/20.
//  Copyright © 2020 Emiya Consulting. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
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
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
}
