//
//  CalculatorBrain.swift
//  5.BMI-v2
//
//  Created by Dang Xuan Quyet on 12/3/19.
//  Copyright © 2019 Mac pro. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getValue() -> String {
        return String(format: "%.2f", bmi?.bmiValue ?? 0.0)
    }
    
    func getAdvance() -> String {
        return bmi?.advance ?? "No advance"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    
    mutating func handleResult(height: Float, weight: Float) {
        let result = weight/(height*height)
        if result < 18.5 {
            bmi = BMI(bmiValue: result, advance: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if result < 24.9 {
            bmi = BMI(bmiValue: result, advance: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(bmiValue: result, advance: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
}
