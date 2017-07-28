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
    var celsiusAbrev = "C°"
    var farenheitAbrev = "F°"
    var milesAbrev = "mi"
    var kilosAbrev = "km"
    var destUnit = ""
    var srcUnit = ""
    var inputValue: String = ""
    var outputValue: String = ""
    var tog = false
    var f2c = false
    var c2f = false
    var m2k = false
    var k2m = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        f2c = true
        c2f = false
        m2k = false
        k2m = false
        
        sourceTextField.text = " \(farenheitAbrev)"
        destinationTextField.text = " \(celsiusAbrev)"
    }
    
//    override init() {
//        self.conversion = fToC(inputValue)
//        self.inputText = rawInput + inputSuffix
//        self.outputText = rawInput + outputSuffix
//        
//    }
    
    func displayInputValue(inputValue: String) {
        sourceTextField.text = inputValue
        
        if f2c {
            sourceTextField.text = "\(inputValue) \(farenheitAbrev)"
            destinationTextField.text = fToC(input: inputValue)
        }
        else if c2f {
            sourceTextField.text = "\(inputValue) \(celsiusAbrev)"
            destinationTextField.text = cToF(input: inputValue)
        }
        else if m2k {
            sourceTextField.text = "\(inputValue) \(milesAbrev)"
            destinationTextField.text = milesToKilos(input: inputValue)
        }
        else if k2m {
            sourceTextField.text = "\(inputValue) \(kilosAbrev)"
            destinationTextField.text = kiloToMiles(input: inputValue)
        }
        
    }
    
    func clearTextFields() {
        
        inputValue = ""
        
        if f2c {
            sourceTextField.text = " \(farenheitAbrev)"
            destinationTextField.text = " \(celsiusAbrev)"
        }
        else if c2f {
            sourceTextField.text = " \(celsiusAbrev)"
            destinationTextField.text = " \(farenheitAbrev)"
        }
        else if m2k {
            sourceTextField.text = " \(milesAbrev)"
            destinationTextField.text = " \(kilosAbrev)"
        }
        else if k2m {
            sourceTextField.text = " \(kilosAbrev)"
            destinationTextField.text = " \(milesAbrev)"
        }
    }
    
    
    @IBAction func converterButtonWasPressed(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = "\(self.inputValue) \(self.farenheitAbrev)"
            self.f2c = true
            self.c2f = false
            self.m2k = false
            self.k2m = false
            
            self.destinationTextField.text = self.fToC(input: self.inputValue)
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = "\(self.inputValue) \(self.celsiusAbrev)"
            self.c2f = true
            self.f2c = false
            self.m2k = false
            self.k2m = false
            
            self.destinationTextField.text = self.cToF(input: self.inputValue)
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = "\(self.inputValue) \(self.milesAbrev)"
            self.f2c = false
            self.c2f = false
            self.m2k = true
            self.k2m = false
            
            self.destinationTextField.text = self.milesToKilos(input: self.inputValue)
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: { (alertAction) in
            self.sourceTextField.text = "\(self.inputValue) \(self.kilosAbrev)"
            self.f2c = false
            self.c2f = false
            self.m2k = false
            self.k2m = true
            
            self.destinationTextField.text = self.kiloToMiles(input: self.inputValue)
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func decimalButtonWasPressed(_ sender: Any) {
        inputValue += "."
        displayInputValue(inputValue: inputValue)
    }
    @IBAction func zeroButtonWasPressed(_ sender: Any) {
        inputValue += "0"
        displayInputValue(inputValue: inputValue)
    }
    @IBAction func clearButtonWasPressed(_ sender: Any) {
        clearTextFields()
    }
    @IBAction func nineButtonWasPressed(_ sender: Any) {
        inputValue += "9"
        displayInputValue(inputValue: inputValue)
    }
    @IBAction func eightButtonWasPressed(_ sender: Any) {
        inputValue += "8"
        displayInputValue(inputValue: inputValue)
    }
    @IBAction func sevenButtonWasPressed(_ sender: Any) {
        inputValue += "7"
        displayInputValue(inputValue: inputValue)

    }
    @IBAction func sixButtonWasPressed(_ sender: Any) {
        inputValue += "6"
        displayInputValue(inputValue: inputValue)

    }
    @IBAction func fiveButtonWasPressed(_ sender: Any) {
        inputValue += "5"
        displayInputValue(inputValue: inputValue)

    }
    @IBAction func fourButtonWasPressed(_ sender: Any) {
        inputValue += "4"
        displayInputValue(inputValue: inputValue)

    }
    @IBAction func threeButtonWasPressed(_ sender: Any) {
        inputValue += "3"
        displayInputValue(inputValue: inputValue)

    }
    @IBAction func twoButtonWasPressed(_ sender: Any) {
        inputValue += "2"
        displayInputValue(inputValue: inputValue)

    }
    @IBAction func oneButtonWasPressed(_ sender: Any) {
        inputValue += "1"
        displayInputValue(inputValue: inputValue)

    }
    @IBAction func minusButtonWasPressed(_ sender: Any) {
        if inputValue.range(of:"-") != nil {
            //Set Input
            inputValue.remove(at: inputValue.startIndex)
            displayInputValue(inputValue: inputValue)

        } else {
            //Set Input
            inputValue.insert("-", at: inputValue.startIndex)
            displayInputValue(inputValue: inputValue)

        }
    }

    
    func kiloToMiles(input: String) -> String {
        if input ==  "" || input == "-" || input == "."{
            return " \(milesAbrev)"
        }
        let miles = Double(input)! * 0.621371
        
        return "\(miles) \(milesAbrev)"
    }
    
    func milesToKilos(input: String) -> String {
        if input ==  "" || input == "-" || input == "." {
            return " \(kilosAbrev)"
        }
        let kilo = Double(input)! * 1.609344
        
        return "\(kilo) \(kilosAbrev)"
    }
    
    func cToF(input: String) -> String {
        if input ==  "" || input == "-" || input == "." {
            return " \(farenheitAbrev)"
        }
        let F = Double(input)! * 1.8 + 32
        
        return "\(F) \(farenheitAbrev)"
    }
    
    func fToC(input: String) ->String {
        if input ==  "" || input == "-" || input == "." {
            return " \(celsiusAbrev)"
        }
        var C = Double(input)! - 32
        C = C * 0.5556
        
        return "\(C) \(celsiusAbrev)"
    }

}

