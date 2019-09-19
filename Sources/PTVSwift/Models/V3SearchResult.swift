//
// V3SearchResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct V3SearchResult: Codable {

    /** Train stations, tram stops, bus stops, regional coach stops or Night Bus stops */
    public var stops: [V3ResultStop]?
    /** Train lines, tram routes, bus routes, regional coach routes, Night Bus routes */
    public var routes: [V3ResultRoute]?
    /** myki ticket outlets */
    public var outlets: [V3ResultOutlet]?
    public var status: V3Status?

    public init(stops: [V3ResultStop]?, routes: [V3ResultRoute]?, outlets: [V3ResultOutlet]?, status: V3Status?) {
        self.stops = stops
        self.routes = routes
        self.outlets = outlets
        self.status = status
    }


}

