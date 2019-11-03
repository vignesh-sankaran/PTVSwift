//
//  File.swift
//  
//
//  Created by Home on 16/10/19.
//

import Foundation

public struct V3Routes: Decodable {
    public let routes: [Route]
    public let status: Status
}

public struct Route: Decodable {
    public let routeServiceStatus: RouteServiceStatus
    public let routeType: Int
    public let routeID: Int
    public let routeName: String
    public let routeNumber: String
    public let routeGTFSID: String
    
    enum CodingKeys: String, CodingKey {
        case routeServiceStatus = "route_service_status"
        case routeType = "route_type"
        case routeID = "route_id"
        case routeName = "route_name"
        case routeNumber = "route_number"
        case routeGTFSID = "route_gtfs_id"
    }
}

public struct RouteServiceStatus: Decodable {
    public let description: String
    public let timestamp: String
}
