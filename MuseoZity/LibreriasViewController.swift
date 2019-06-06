//
//  LibreriasViewController.swift
//  MuseoZity
//
//  Created by Dev2 on 06/06/2019.
//  Copyright © 2019 Lurita. All rights reserved.
//

import UIKit
import MapKit

class LibreriasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var libreria: [Libreria] = []
    
    @IBOutlet weak var TablaLibrerias: UITableView!
    
    
    func crearLibrerias() {
        
        let coordenadas = CLLocationCoordinate2D(latitude: 40.425296, longitude: -3.695737)
        let descripcion = "La librería Antonio Machado se fundó en el año 1971. Nació como un lugar de encuentro donde se hacían conciertos, exposiciones y muchos mítines, coloquios y presentaciones de libros. "
        let machado = Libreria(nombre: "Libreria Antonio Machado", imagen: "antoniomachado", descripcion: descripcion, coord: coordenadas)
        
        libreria.append(machado)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TablaLibrerias.delegate = self
        TablaLibrerias.dataSource = self

        // Do any additional setup after loading the view.
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return libreria.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIden = "LibreriaTableViewCell"
        let  tableViewCell = TablaLibrerias.dequeueReusableCell(withIdentifier: cellIden)
        
        let librerias =  libreria[indexPath.row]
        
        if let LibreriaTableViewCell = tableViewCell as? LibreriaTableViewCell {
            LibreriaTableViewCell.configure(libreria: librerias)
        }
        
        return tableViewCell!
        
    }
        
    

 
}
