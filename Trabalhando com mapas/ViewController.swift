//
//  ViewController.swift
//  Trabalhando com mapas
//
//  Created by Rodrigo Abreu on 06/11/17.
//  Copyright © 2017 Rodrigo Abreu. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    
    @IBOutlet var mapa: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let latitude: CLLocationDegrees = -23.586974
        let longetude: CLLocationDegrees = -46.657355
        
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongetude: CLLocationDegrees = 0.01
        
        //configurar coordenadas 2D
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longetude)
        
        //configurar o zoom
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongetude)
        
        //configurar uma regiao para o mapa
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)
        
        //exibir regiao no mapa
        mapa.setRegion(regiao, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

