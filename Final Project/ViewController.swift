//
//  ViewController.swift
//  Final Project
//
//  Created by Kourosh Mobl on 7/27/17.
//  Copyright © 2017 Kourosh Mobl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var converterButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    @IBOutlet weak var destinationTextField: UITextField!
    @IBOutlet weak var sourceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func append(inputString: String, type: String) -> String {
        let n = Double(inputString)
        let newValue = "\(n) \(type)"
        
        return newValue
    }
    
    
    @IBAction func converterButtonWasPressed(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = self.append(inputString: self.sourceTextField.text!, type: "F°")
            self.destinationTextField.text = self.append(inputString: self.destinationTextField.text!, type: "C°")
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = self.append(inputString: self.sourceTextField.text!, type: "C°")
            self.destinationTextField.text = self.append(inputString: self.destinationTextField.text!, type: "F°")
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = self.append(inputString: self.sourceTextField.text!, type: "mi")
            self.destinationTextField.text = self.append(inputString: self.destinationTextField.text!, type: "kilo")
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = self.append(inputString: self.sourceTextField.text!, type: "kilo")
            self.destinationTextField.text = self.append(inputString: self.destinationTextField.text!, type: "mi")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func decimalButtonWasPressed(_ sender: Any) {
    }
    @IBAction func zeroButtonWasPressed(_ sender: Any) {
    }
    @IBAction func clearButtonWasPressed(_ sender: Any) {
    }
    @IBAction func nineButtonWasPressed(_ sender: Any) {
    }
    @IBAction func eightButtonWasPressed(_ sender: Any) {
    }
    @IBAction func sevenButtonWasPressed(_ sender: Any) {
    }
    @IBAction func sixButtonWasPressed(_ sender: Any) {
    }
    @IBAction func fiveButtonWasPressed(_ sender: Any) {
    }
    @IBAction func fourButtonWasPressed(_ sender: Any) {
    }
    @IBAction func threeButtonWasPressed(_ sender: Any) {
    }
    @IBAction func twoButtonWasPressed(_ sender: Any) {
    }
    @IBAction func oneButtonWasPressed(_ sender: Any) {
    }
    @IBAction func minusButtonWasPressed(_ sender: Any) {
    }


}

