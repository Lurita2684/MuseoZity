//
//  BibliotecaTableViewCell.swift
//  MuseoZity
//
//  Created by Dev2 on 06/06/2019.
//  Copyright © 2019 Lurita. All rights reserved.
//

import UIKit
import MapKit


class BibliotecaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelBiblioteca: UILabel!
    @IBOutlet weak var descripcionBiblioteca: UITextView!
    @IBOutlet weak var imagenBiblioteca: UIImageView!
    @IBOutlet weak var mapaBiblioteca: MKMapView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(biblioteca: Biblioteca) {
        labelBiblioteca.text = biblioteca.nombre
        descripcionBiblioteca.text = biblioteca.descripcion
        imagenBiblioteca.image = UIImage(named: biblioteca.imagen)
       centerMapOnLocation(biblioteca.coord)
    }

    func addBiblioteca (biblioteca: Biblioteca) {
        
        var pdi = PointOfInterest(title: biblioteca.nombre, subtitle: "", coordinate: biblioteca.coord)
    }
    
    func centerMapOnLocation(_ location: CLLocationCoordinate2D) {
        let region = MKCoordinateRegion(center: location, latitudinalMeters: 200.0, longitudinalMeters: 200.0)
        mapaBiblioteca.setRegion(region, animated: true)
    }

}
