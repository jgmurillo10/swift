//
//  DetallePlatoViewController.swift
//  PedidoISIS
//
//  Created by Juan Murillo on 1/09/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class DetallePlatoViewController: UIViewController {
    var textoTitulo: String!
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
    @IBOutlet weak var labelTitulo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelTitulo.text = textoTitulo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
