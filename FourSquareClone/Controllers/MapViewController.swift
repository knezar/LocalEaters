//
//  ViewController.swift
//  FoursquareClone
//
//  Created by C4Q on 5/12/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    
    var location = [Item]()// {
//        didSet {
//            self.
//        }
//    }
//
    
        lazy var citySearchBar: UISearchBar = {
            let searchBar = UISearchBar()
//            searchBar.searchBarStyle = UISearchBarStyle.prominent
//            searchBar.backgroundColor = UIColor.clear
//            searchBar.tintColor = UIColor.clear
            return searchBar
        }()
    
    lazy var mainMapView: MKMapView = {
        let mapView = MKMapView()
//            mapView
//        mapView.mapType = MKMapType.standard
//        mapView.isZoomEnabled = true
//        mapView.isScrollEnabled = true
//        mapView.showsCompass = true
//        mapView.showsScale = true
        return mapView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "list-30"), style: .plain, target: self, action: #selector(listView))
        
        navigationItem.titleView = UISearchBar()
        
        view.addSubview(citySearchBar)
        view.addSubview(mainMapView)
        setConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      let currentPosition = checkLocationAuthorizationStatus()
        
//            ClientAPI.manager.getWeather(from:(currentPosition.coordinate.latitude, currentPosition.coordinate.longitude ), completionHandler: {self.location = $0}, errorHandler: {print($0)})
//            let initialLocation = CLLocation(latitude: currentPosition.coordinate.latitude, longitude: currentPosition.coordinate.longitude)
//            self.centerMapOnLocation(location: initialLocation)
//        print("here is am latitude: \(currentPosition), \nand longtidue wise: \(currentPosition?.coordinate.longitude)")
        

    }
    
    let regionRadius: CLLocationDistance = 10000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        mainMapView.setRegion(coordinateRegion, animated: true)
    }
    

    func checkLocationAuthorizationStatus() {
        var currentPosition: CLLocation?
        let locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest

        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mainMapView.showsUserLocation = true
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyBest
//            locationManager.startUpdatingLocation()
//            currentPosition = locationManager.location
        } else {
            locationManager.requestWhenInUseAuthorization()
//            CityNameHelper.manager.getLocationName(from: "NewYork", completionHandler: { (stringPosition) in
//                currentPosition = stringPosition
//            }, errorHandler: {print($0)})

        }
//        return currentPosition
    }
    
 @objc func listView() {
        self.navigationController?.pushViewController(ListTableViewController(), animated: true)
    }

    func setConstraints() {
        citySearchBar.translatesAutoresizingMaskIntoConstraints = false
        citySearchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        citySearchBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        citySearchBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        citySearchBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        mainMapView.translatesAutoresizingMaskIntoConstraints = false
        mainMapView.topAnchor.constraint(equalTo: citySearchBar.bottomAnchor).isActive = true
        mainMapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mainMapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        mainMapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

