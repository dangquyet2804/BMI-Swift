//
//  ResultViewController.swift
//  5.BMI-v2
//
//  Created by Dang Xuan Quyet on 12/3/19.
//  Copyright © 2019 Mac pro. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advance: String?
    var color: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var advanceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        advanceLabel.text = advance
        view.backgroundColor = color
    }

    @IBAction func backCalculator(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
