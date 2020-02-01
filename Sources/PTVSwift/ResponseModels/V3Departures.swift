//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 29/1/20.
//

import Foundation

public struct V3Departures: Decodable {
    let departures: [V3Departure]
}

public struct V3Departure: Decodable {
    let stopId: Int
    let routeId: Int
    let runId: Int
    let directionId: Int
    let disruptionIds: [Int]
    let scheduledDepartureTime: String
    let estimatedDepartureTime: String?
    let atPlatform: Bool
    let platformNumber: Int?
    let flags: String
    let departureSequence: Int
    
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
