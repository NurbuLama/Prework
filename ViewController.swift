//
//  ViewController.swift
//  Prework
//
//  Created by Nurbu Angdu on 6/30/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmtTextField: UITextField!
    @IBOutlet weak var tipAmtLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        let bill =  Double(billAmtTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.2, 0.25, 0.3]
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmtLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }

}

