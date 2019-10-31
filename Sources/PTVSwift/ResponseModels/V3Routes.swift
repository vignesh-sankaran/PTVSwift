//
//  File.swift
//  
//
//  Created by Home on 16/10/19.
//

import Foundation

public struct V3Routes: Codable {
    public let routes: [Route]
    public let status: Status
}

public struct Route: Codable {
    public let routeServiceStatus: RouteServiceStatus
    public let routeType: Int
    public let routeId: Int
    public let routeName: String
    public let routeNumber: String
    public let routeGTFSId: String
    
    enum CodingKeys: String, CodingKey {
        case routeServiceStatus = "route_service_status"
        case routeType = "route_type"
        case routeId = "route_id"
        case routeName = "route_name"
        case routeNumber = "route_number"
        case routeGTFSId = "route_gtfs_id"
    }
}

public struct RouteServiceStatus: Codable {
    public let description: String
    public let timestamp: String
}
