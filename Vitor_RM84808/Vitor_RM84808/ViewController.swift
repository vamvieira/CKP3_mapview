//
//  ViewController.swift
//  Vitor_RM84808
//
//  Created by Usuário Convidado on 07/11/23.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var mkmapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: -15.707130805423583, longitude: -57.98428785337112)
        annotation.title = "Lago Azul - Mato Grosso"
        annotation.subtitle = "Lago Natural em uma fazenda, com peixes"
        mkmapView.addAnnotation(annotation)
        
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        mkmapView.setRegion(region, animated: true)
        
    }
}

