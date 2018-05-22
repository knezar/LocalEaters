//
//  ViewController.swift
//  FoursquareClone
//
//  Created by C4Q on 5/12/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    var location = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
//        navigationItem.searchController =  UISearchController(searchResultsController: self)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "list-30"), style: .plain, target: self, action: #selector(listView))
//        let searchBar = UISearchBar()
//        searchBar.sizeToFit()
//        navigationItem.titleView = searchBar
//        location.
        ClientAPI.manager.getWeather(from: "yup", completionHandler: {self.location = $0}, errorHandler: {print($0)})

    }

 @objc func listView() {
        self.navigationController?.pushViewController(ListTableViewController(), animated: true)
    }

}

