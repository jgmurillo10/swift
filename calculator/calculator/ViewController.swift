//
//  ViewController.swift
//  calculator
//
//  Created by Juan Murillo on 8/07/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        label.text = label.text! + String(sender.tag)
    }
    @IBAction func reset(_ sender: UIButton) {
        label.text = ""
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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

