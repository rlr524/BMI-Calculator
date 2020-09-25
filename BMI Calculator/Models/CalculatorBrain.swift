//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rob Ranf on 9/24/20.
//  Copyright © 2020 Emiya Consulting. All rights reserved.
//
// Test 55kg and 1.70m s/b 19.1

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi)
        return bmiToOneDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
}

