//
//  ViewController.swift
//  Prework
//
//  Created by Zihan Islam on 7/28/22.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var TipAmount: UILabel!
    
    @IBOutlet weak var TotalAmount: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!


    override func viewDidLoad()
{
        super.viewDidLoad()
}
  
    @IBAction func CalculateTip(_ sender: Any)
    {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmount.text = String(format: "$%.2f", tip)
        TotalAmount.text = String(format: "$%.2f", total)
        
        
        
        
    }
    
    
    
}
