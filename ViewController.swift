//
//  ViewController.swift
//  practice app
//
//  Created by Curtis Teitleman on 2/10/17.
//  Copyright © 2017 Curtis Teitleman. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces
import Foundation
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {
    
    // Set the status bar style to complement night-mode.
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 42.36, longitude: -71.05, zoom: 7.5)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        do {
            if let styleURL = Bundle.main.url(forResource: "style", withExtension: "json") {
                mapView.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
            } else {
                NSLog("Unable to find style.json")
            }
        } catch {
            NSLog("One or more of the map styles failed to load. \(error)")
        }

        
        mapView.isMyLocationEnabled = true
        self.view = mapView

        let position = CLLocationCoordinate2D(latitude: 43.0, longitude: -71.0)
        let marker = GMSMarker(position: position)                  //sample marker code
        marker.title = "Whiskey Saigon"
        marker.map = mapView
        marker.snippet = "Population: 8,174,100"
        marker.icon = UIImage(named: "house")
        
        let circleCenter = CLLocationCoordinate2D(latitude: 43.0, longitude: -71.0)
        let circ = GMSCircle(position: circleCenter, radius: 1000)
        circ.map = mapView

    }


    override func viewDidLoad() {
        super.viewDidLoad()

           }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

