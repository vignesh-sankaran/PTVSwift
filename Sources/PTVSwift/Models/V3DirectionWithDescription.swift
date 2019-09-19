//
// V3DirectionWithDescription.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct V3DirectionWithDescription: Codable {

    public var routeDirectionDescription: String?
    /** Direction of travel identifier */
    public var directionId: Int?
    /** Name of direction of travel */
    public var directionName: String?
    /** Route identifier */
    public var routeId: Int?
    /** Transport mode identifier */
    public var routeType: Int?

    public init(routeDirectionDescription: String?, directionId: Int?, directionName: String?, routeId: Int?, routeType: Int?) {
        self.routeDirectionDescription = routeDirectionDescription
        self.directionId = directionId
        self.directionName = directionName
        self.routeId = routeId
        self.routeType = routeType
    }

    public enum CodingKeys: String, CodingKey { 
        case routeDirectionDescription = "route_direction_description"
        case directionId = "direction_id"
        case directionName = "direction_name"
        case routeId = "route_id"
        case routeType = "route_type"
    }


}

