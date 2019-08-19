//
//  SettingsViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Kevin Natera on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController : UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    @IBOutlet weak var previewLabel: UILabel!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        sliderOutlet.maximumValue = 30
        sliderOutlet.minimumValue = 10
        let currentValue = sender.value
        fontSize = CGFloat(currentValue)
        stepperOutlet.value = Double(currentValue)
        previewLabel.text = "Preview Font Size: \(Int(currentValue))"
        mainLabel.font = mainLabel.font.withSize(CGFloat(currentValue))
        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperOutlet.maximumValue = 30
        stepperOutlet.minimumValue = 10
        let currentValue = sender.value
        fontSize = CGFloat(currentValue)
        sliderOutlet.value = Float(currentValue)
        previewLabel.text = "Preview Font Size: \(Int(currentValue))"
        mainLabel.font = mainLabel.font.withSize(CGFloat(currentValue))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderOutlet.value = Float(fontSize)
        stepperOutlet.value = Double(fontSize)
        previewLabel.text = "Preview Font Size: \(Int(fontSize))"
        mainLabel.font = mainLabel.font.withSize(CGFloat(fontSize))
        
    }
}
