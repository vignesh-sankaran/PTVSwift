//
// V3RouteType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct V3RouteType: Codable {

    /** Name of transport mode */
    public var routeTypeName: String?
    /** Transport mode identifier */
    public var routeType: Int?

    public init(routeTypeName: String?, routeType: Int?) {
        self.routeTypeName = routeTypeName
        self.routeType = routeType
    }

    public enum CodingKeys: String, CodingKey { 
        case routeTypeName = "route_type_name"
        case routeType = "route_type"
    }


}

