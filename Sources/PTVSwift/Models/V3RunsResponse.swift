//
// V3RunsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct V3RunsResponse: Codable {

    /** Individual trips/services of a route */
    public var runs: [V3Run]?
    public var status: V3Status?

    public init(runs: [V3Run]?, status: V3Status?) {
        self.runs = runs
        self.status = status
    }


}

