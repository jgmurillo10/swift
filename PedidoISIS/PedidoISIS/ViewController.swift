//
//  ViewController.swift
//  PedidoISIS
//
//  Created by Juan Murillo on 30/08/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var platosTableView: UITableView!

//    @IBOutlet weak var platosTableView: UITableView!
    var arregloPlatos:[String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        arregloPlatos.append("Hamburguesa")
        arregloPlatos.append("Pizza")
        arregloPlatos.append("Papas")
        arregloPlatos.append("Calendato")
        arregloPlatos.append("Gaseosa")
        arregloPlatos.append("Cerveza")
        print("Los platos son: \(arregloPlatos)")
        //necesitamos decirle a la tabla que implementamos sus metodos delegato y data source
        platosTableView.delegate = self
        platosTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloPlatos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //popular la celda en el índice dado
        //cargar la celda con el índice que definimos
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CellPlato")!
        //asignamos al texto de la celda el string correspondiente en el arreglo de platos esto es porque este metodo se llama para cada fila de la tabla
        cell.textLabel!.text = arregloPlatos[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "GoToDetallePlato", sender: arregloPlatos[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToDetallePlato" {
            let  controladorDestino = segue.destination as! DetallePlatoViewController
            controladorDestino.textoTitulo = sender as? String
            
        }
    }


}

