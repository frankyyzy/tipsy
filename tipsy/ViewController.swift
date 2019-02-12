//
//  ViewController.swift
//  tipsy
//
//  Created by Ziyi Ye on 1/31/19.
//  Copyright © 2019 Frank Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
  
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    //custom tip variables
    @IBOutlet weak var customBillField: UITextField!
    
    @IBOutlet weak var tipPercentageField: UITextField!
    
    @IBOutlet weak var customTipLabel: UILabel!
    
    @IBOutlet weak var customTipTotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap1(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
    
    
    
    @IBAction func customTipCalc(_ sender: Any) {
        
        
        // Get the bill amount
        let bill = Double(customBillField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = Double(tipPercentageField.text!) ?? 0
        
        
        let tip = bill * tipPercentages / 100
        let total = bill + tip
        
        // Update the tip and total labels
        customTipLabel.text = String(format: "$%.2f", tip)
        customTipTotal.text = String(format: "$%.2f", total)
    }
}

