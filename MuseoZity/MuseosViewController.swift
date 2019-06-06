//
//  MuseosViewController.swift
//  MuseoZity
//
//  Created by Dev2 on 03/06/2019.
//  Copyright © 2019 Lurita. All rights reserved.
//1 error cuando cambio codigo no cambio en el storyboard
// 2error no poner la clase en la vista del storyboard desp de crear el fichero del codigo
//3 error no asignar un delegado

import UIKit
import MapKit


class MuseosViewController: UIViewController ,  UITableViewDataSource, UITableViewDelegate {
    
    var museos: [Museo] = []
    @IBOutlet weak var tableMuseos: UITableView!
    
    func creaMuseos() {
      
        let coordenadas = CLLocationCoordinate2D(latitude: 40.414042, longitude: -3.691665)
        let descripcionPrado = "Una de las mayores pinacotecas de Europa. Su coleccion se debe a los grandes aristócratas aficionados al arte. Pocos se atreverían a poner en duda que es el museo más importante del mundo en pintura europea.                                                                               Lunes a Sábado de 10:00 a 20:00 , Domingos de 10:00 a 19:00"
        let prado = Museo(nombre: "Museo Nacional del Prado", imagen: "museoPrado", descripcion: descripcionPrado, coord: coordenadas
        )
    
        museos.append(prado)
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creaMuseos()
        // Do any additional setup after loading the view.
        tableMuseos.delegate = self
        tableMuseos.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return museos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "MuseosTableViewCell"
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId)
//sacar de un array el elemento de una posicion
        
        let museo = museos[indexPath.row]
        
        if let museoTableViewCell = tableViewCell as? MuseosMadridTableViewCell {
            museoTableViewCell.configure(museo: museo)
        }
        
        return tableViewCell!

    }


    }

