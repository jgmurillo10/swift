//
//  ViewController.swift
//  Silly Song
//
//  Created by Juan Murillo on 5/09/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!

    @IBOutlet weak var lyricsView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func reset(_ sender: Any) {
    }
}

