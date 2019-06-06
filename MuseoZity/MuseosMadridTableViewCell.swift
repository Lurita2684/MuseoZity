//
//  MuseosMadridTableViewCell.swift
//  MuseoZity
//
//  Created by Dev2 on 31/05/2019.
//  Copyright © 2019 Lurita. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MuseosMadridTableViewCell: UITableViewCell , MKMapViewDelegate {
    
    let locationManager = CLLocationManager()
    @IBOutlet weak var labelTitleMuseo: UILabel!
    @IBOutlet weak var descriptionMuseo: UITextView!
    @IBOutlet weak var stackViewMuseo: UIStackView!
    @IBOutlet weak var imageViewMuseo: UIImageView!
    @IBOutlet weak var mapMuseo: MKMapView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(museo: Museo) {
        labelTitleMuseo.text = museo.nombre
        descriptionMuseo.text = museo.descripcion
        imageViewMuseo.image = UIImage(named: museo.imagen)
//        mapMuseo.addAnnotation(museo.coord as! MKAnnotation)
        centerMapOnLocation(museo.coord)
    }

    func addMuseo (museo: Museo) {
        
        var poi = PointOfInterest(title: museo.nombre, subtitle: "", coordinate: museo.coord)
        mapMuseo.addAnnotation(poi)
    }
    
    func centerMapOnLocation(_ location: CLLocationCoordinate2D) {
        let region = MKCoordinateRegion(center: location, latitudinalMeters: 200.0, longitudinalMeters: 200.0)
        mapMuseo.setRegion(region, animated: true)
    }

}


