//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 28/11/19.
//

import Foundation

public struct V3Directions: Decodable {
    public let directions: [V3Direction]
    public let status: V3Status
}

public struct V3Direction: Decodable {
    public let routeDirectionDescription: String
    public let directionId: Int
    public let directionName: String
    public let routeId: Int
    public let routeType: Int
    
    enum CodingKeys: String, CodingKey {
        case routeDirectionDescription = "route_direction_description"
        case directionId = "direction_id"
        case directionName = "direction_name"
        case routeId = "route_id"
        case routeType = "route_type"
    }
}
