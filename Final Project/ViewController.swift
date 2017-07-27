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
    
    
    @IBAction func converterButtonWasPressed(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: { (alertAction) in
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: { (alertAction) in
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: { (alertAction) in
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: { (alertAction) in
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

