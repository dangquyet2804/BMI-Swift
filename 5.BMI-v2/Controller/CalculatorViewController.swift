//
//  ViewController.swift
//  5.BMI-v2
//
//  Created by Dang Xuan Quyet on 12/3/19.
//  Copyright © 2019 Mac pro. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeHeight(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func changeWeight(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
    @IBAction func pressCalculator(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.handleResult(height: height, weight: weight)
        performSegue(withIdentifier: "Result", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Result") {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getValue()
            destinationVC.advance = calculatorBrain.getAdvance()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

