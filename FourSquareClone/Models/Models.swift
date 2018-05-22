//
//  Models.swift
//  FoursquareClone
//
//  Created by C4Q on 5/14/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

struct Location: Codable {
    let lat: Double
    let lng: Double
}

struct Venue: Codable {
    let id: String
    let name: String
    let geoLocation: Location
    enum CodingKeys: String, CodingKey {
        case geoLocation = "location"
        case id
        case name
    }
}

struct Item: Codable {
    let venue: Venue
    let referralId: String
    
//        enum CodingKeys: String, CodingKey {
//            case myVenue = "venue"
//
//        }
}

struct Group: Codable {
    let items: [Item]
    let type: String
//    enum CodingKeys: String, CodingKey {
//        case locations = "items"
//    }
}
struct Response: Codable {
    let groups: [Group]
    let query: String
//    enum CodingKeys: String, CodingKey {
//        case FSGroups = "groups"
//    }
}

struct FSLocations: Codable {
    let response: Response
//    let meta: String
//    enum CodingKeys: String, CodingKey {
//        case FSResponse = "response"
//    }
}

 
