//
//  NumbersVC.swift
//  Rando
//
//  Created by Megan Levin on 8/20/17.
//  Copyright © 2017 Megan Levin. All rights reserved.
//

import Foundation
import UIKit

class NumbersVC: UIViewController {
    

    @IBOutlet weak var numberField1: UITextField!
    @IBOutlet weak var numberField2: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = ""
        numberField1.keyboardType = UIKeyboardType.numberPad
        numberField2.keyboardType = UIKeyboardType.numberPad
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func goButtonClicked(_ sender: Any) {
        // choose random number from range
        self.view.endEditing(true)
        let num1: UInt32 = UInt32(numberField1.text!)!
        let num2: UInt32 = UInt32(numberField2.text!)!
        let maxi: UInt32 = max(num1, num2)
        let mini: UInt32 = min(num1, num2)
        let diceRoll = Int(arc4random_uniform(maxi-mini+1) + mini)
        result.text = String(diceRoll)
    }

}
