//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rob Ranf on 9/24/20.
//  Copyright © 2020 Emiya Consulting. All rights reserved.
//
// Test 55kg and 1.70m s/b 19.0
// Test 134kg and 1.83m s/b 40.0

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Something went wrong."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
        mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        switch bmiValue {
        case 0...18.4:
            bmi = BMI(value: bmiValue, advice: "Eat some more pie!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        case 30.0...:
            bmi = BMI(value: bmiValue, advice: "Lay off the pie, fatty!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        default:
            print("There was an error.")
        }
    }
}
