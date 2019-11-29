//
//  File.swift
//  
//
//  Created by Home on 1/11/19.
//

import Foundation

public struct V3Stops: Decodable {
    public let stops: [Stop]
    public let status: V3Status
}

public struct Stop: Decodable {
    public let disruptionIDs: [Int]?
    public let stopSuburb: String
    public let stopName: String
    public let stopID: Int
    public let routeType: Int
    public let stopLatitude: Double
    public let stopLongitude: Double
    public let stopSequence: Int
    
    enum CodingKeys: String, CodingKey {
        case disruptionIDs = "disruption_ids"
        case stopSuburb = "stop_suburb"
        case stopName = "stop_name"
        case stopID = "stop_id"
        case routeType = "route_type"
        case stopLatitude = "stop_latitude"
        case stopLongitude = "stop_longitude"
        case stopSequence = "stop_sequence"
    }
}
