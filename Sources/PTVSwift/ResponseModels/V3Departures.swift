//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 29/1/20.
//

import Foundation

public struct V3Departures: Decodable {
    public let departures: [V3Departure]
}

public struct V3Departure: Decodable {
    public let stopId: Int
    public let routeId: Int
    public let runId: Int
    public let directionId: Int
    public let disruptionIds: [Int]
    public let scheduledDepartureTime: String
    public let estimatedDepartureTime: String?
    public let atPlatform: Bool
    public let platformNumber: String?
    public let flags: String
    public let departureSequence: Int
    
    enum CodingKeys: String, CodingKey {
        case stopId = "stop_id"
        case routeId = "route_id"
        case runId = "run_id"
        case directionId = "direction_id"
        case disruptionIds = "disruption_ids"
        case scheduledDepartureTime = "scheduled_departure_utc"
        case estimatedDepartureTime = "estimated_departure_utc"
        case atPlatform = "at_platform"
        case platformNumber = "platform_number"
        case flags = "flags"
        case departureSequence = "departure_sequence"
    }
}
