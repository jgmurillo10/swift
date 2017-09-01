//
//  ViewController.swift
//  tableView
//
//  Created by Juan Murillo on 30/08/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    let list = ["Milk", "Honey", "Bread", "Tacos", "Tomatoes"];
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return(list.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell" )
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
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

