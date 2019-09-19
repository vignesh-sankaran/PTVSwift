//
// V3RouteDeparturesSpecificParameters.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct V3RouteDeparturesSpecificParameters: Codable {

    public enum Expand: String, Codable {
        case all = "All"
        case stop = "Stop"
        case route = "Route"
        case run = "Run"
        case direction = "Direction"
        case disruption = "Disruption"
    }
    /** When set to true, all timetable information returned by Chronos will be sourced from the Parser timetables,              while when set to false (default state), the real-time departure information and operational time from              Metro CIS will continue to be returned where available. */
    public var trainScheduledTimetables: Bool?
    /** Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. */
    public var lookBackwards: Bool?
    /** Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) */
    public var dateUtc: Date?
    /** Maximum number of results returned */
    public var maxResults: Int?
    /** Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only */
    public var includeCancelled: Bool?
    /** List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption */
    public var expand: [Expand]?

    public init(trainScheduledTimetables: Bool?, lookBackwards: Bool?, dateUtc: Date?, maxResults: Int?, includeCancelled: Bool?, expand: [Expand]?) {
        self.trainScheduledTimetables = trainScheduledTimetables
        self.lookBackwards = lookBackwards
        self.dateUtc = dateUtc
        self.maxResults = maxResults
        self.includeCancelled = includeCancelled
        self.expand = expand
    }

    public enum CodingKeys: String, CodingKey { 
        case trainScheduledTimetables = "train_scheduled_timetables"
        case lookBackwards = "look_backwards"
        case dateUtc = "date_utc"
        case maxResults = "max_results"
        case includeCancelled = "include_cancelled"
        case expand
    }


}

