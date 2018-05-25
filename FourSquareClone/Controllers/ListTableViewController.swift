
//
//  Created by C4Q on 4/30/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    let cellID = "venueCell"
    
    var location = [Item]() {
        didSet {
            self.tableView.reloadData()
        }
    }
//    lazy var venueTableView: UITableView = {
//        let tv = UITableView()
////        tv.delegate = self
////        tv.dataSource = self
//        tv.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
//        return tv
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(self.venueTableView)
//        self.venueTableView.translatesAutoresizingMaskIntoConstraints = false
//        tableViewConstraints()
//        loadVenues()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadVenues()
    }
    
    private func loadVenues() {
//        CityNameHelper.manager.getLocationName(from: "newyork", completionHandler: { (geoPosition) in
//            ClientAPI.manager.getWeather(from: geoPosition, completionHandler: {self.location = $0}, errorHandler: {print($0)})
//        }, errorHandler: {print($0)})
    }

//MARK:- UITableView delegate

//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 10
//    }


//MARK:- UITableView Data Source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return location.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let venueInfo = self.location[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.textAlignment = .center
        cell.detailTextLabel?.text = venueInfo.referralId
       cell.textLabel?.text = venueInfo.venue.name
//        cell.nameLabel.setNeedsLayout()
        return cell
    }

// MARK:- Setting constraints

//    func tableViewConstraints() {
//        self.venueTableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
//        self.venueTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
//        self.venueTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
//        self.venueTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//    }
}


