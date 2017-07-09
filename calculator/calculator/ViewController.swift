//
//  ViewController.swift
//  calculator
//
//  Created by Juan Murillo on 8/07/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath: Bool = false
    var operation: Int = 0
    var result: Double = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            label.text = String(sender.tag)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        } else {
            label.text = label.text! + String(sender.tag)
            numberOnScreen = Double(label.text!)!
        }
        
        
    }
    @IBAction func reset(_ sender: UIButton) {
        label.text = ""
        previousNumber = 0
        numberOnScreen = 0
        operation = 0
    }
    
    @IBAction func erase(_ sender: UIButton) {
        if label.text == "" {
            return
        }
        let startIndex = label.text!.index(label.text!.startIndex, offsetBy: 0)
        let endIndex = label.text!.index(label.text!.startIndex, offsetBy: (label.text!.characters.count)-1)
        let stringRange = startIndex ..< endIndex
        let subStr = label.text!.substring(with: stringRange)
        label.text = subStr
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 14 {
            previousNumber = Double(label.text!)!
            if sender.tag == 10 { //divide
                label.text = "/"
            } else if sender.tag == 11 { // multiply
                label.text = "x"
            } else if sender.tag == 12 { // minus
                label.text = "-"
            } else if sender.tag == 13 { // plus
                label.text = "+"
            }
            operation = sender.tag
            performingMath = true
        }  else if sender.tag == 14 {
            if operation == 10 { // /
                label.text = String(previousNumber / numberOnScreen)
            } else if operation == 11 { // x
                label.text = String(previousNumber * numberOnScreen)
            } else if operation == 12 { // -
                label.text = String(previousNumber - numberOnScreen)
            } else if operation == 13 { // +
                label.text = String(previousNumber + numberOnScreen)
            }
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

