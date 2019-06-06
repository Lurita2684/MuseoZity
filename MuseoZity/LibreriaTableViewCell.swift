//
//  LibreriaTableViewCell.swift
//  MuseoZity
//
//  Created by Dev2 on 06/06/2019.
//  Copyright © 2019 Lurita. All rights reserved.
//

import UIKit
import MapKit

class LibreriaTableViewCell: UITableViewCell {

    @IBOutlet weak var labelLibreria: UILabel!
    @IBOutlet weak var descripcionLibreria: UITextView!
    @IBOutlet weak var imagenLibreria: UIImageView!
    @IBOutlet weak var mapaLibreria: MKMapView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(libreria: Libreria) {
        labelLibreria.text = libreria.nombre
        descripcionLibreria.text = libreria.descripcion
        imagenLibreria.image = UIImage(named: libreria.imagen)
        centerMapOnLocation(libreria.coord)
    }

    func addLibreria (libreria: Libreria) {
        var poi = PointOfInterest(title: libreria.nombre, subtitle: "", coordinate: libreria.coord)
        mapaLibreria.addAnnotation(poi)
        
    }
    
    func centerMapOnLocation(_ location: CLLocationCoordinate2D) {
        let region = MKCoordinateRegion(center: location, latitudinalMeters: 200.0, longitudinalMeters: 200.0)
        mapaLibreria.setRegion(region, animated: true)
    }

}
