//
//  File.swift
//  
//
//  Created by Home on 16/10/19.
//

import Foundation

public struct V3Routes: Decodable {
    let routes: [Route]
    let status: Status
}

public struct Route: Decodable {
    let routeServiceStatus: RouteServiceStatus
    let routeType: Int
    let routeId: Int
    let routeName: String
    let routeNumber: String
    let routeGTFSId: String
    
    enum CodingKeys: String, CodingKey {
        case routeServiceStatus = "route_service_status"
        case routeType = "route_type"
        case routeId = "route_id"
        case routeName = "route_name"
        case routeNumber = "route_number"
        case routeGTFSId = "route_gtfs_id"
    }
}

public struct RouteServiceStatus: Decodable {
    let description: String
    let timestamp: String
}
