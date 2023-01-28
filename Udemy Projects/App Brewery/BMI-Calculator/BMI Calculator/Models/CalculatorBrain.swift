//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Daniel on 2023/01/24.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    let color = (underweight: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), fit: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), overweight: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
    
    func getBMIValue() -> String {
        let bmiOutput = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiOutput
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.02002207376, green: 0.2150950134, blue: 0.2305098176, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: color.underweight)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: color.fit)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: color.overweight)
        }
    }
    
    
}
