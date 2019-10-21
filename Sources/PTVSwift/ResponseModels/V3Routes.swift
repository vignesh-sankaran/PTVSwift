//
//  File.swift
//  
//
//  Created by Home on 16/10/19.
//

import Foundation

struct V3Routes: Decodable {
    let route: Route
    let status: Status
}

struct Route: Decodable {
    let routeServiceStatus: RouteServiceStatus
    let routeType: Int
    let routeId: Int
    let routeName: String
    let routeNumber: String
    let routeGTFSId: String
}

struct RouteServiceStatus: Decodable {
    let description: String
    let timestamp: String
}
