//
// DeparturesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class DeparturesAPI {
    /**
     * enum for parameter routeType
     */
    public enum RouteType_departuresGetForStop: Int {
        case _0 = 0
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
    }

    /**
     * enum for parameter expand
     */
    public enum Expand_departuresGetForStop: String {
        case all = "All"
        case stop = "Stop"
        case route = "Route"
        case run = "Run"
        case direction = "Direction"
        case disruption = "Disruption"
    }

    /**
     View departures for all routes from a stop
     
     - parameter routeType: (path) Number identifying transport mode; values returned via RouteTypes API 
     - parameter stopId: (path) Identifier of stop; values returned by Stops API 
     - parameter platformNumbers: (query) Filter by platform number at stop (optional)
     - parameter directionId: (query) Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} (optional)
     - parameter lookBackwards: (query) Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. (optional)
     - parameter gtfs: (query) Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data (optional)
     - parameter dateUtc: (query) Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) (optional)
     - parameter maxResults: (query) Maximum number of results returned (optional)
     - parameter includeCancelled: (query) Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only (optional)
     - parameter expand: (query) List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func departuresGetForStop(routeType: RouteType_departuresGetForStop, stopId: Int, platformNumbers: [Int]? = nil, directionId: Int? = nil, lookBackwards: Bool? = nil, gtfs: Bool? = nil, dateUtc: Date? = nil, maxResults: Int? = nil, includeCancelled: Bool? = nil, expand: [String]? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping ((_ data: V3DeparturesResponse?,_ error: Error?) -> Void)) {
        departuresGetForStopWithRequestBuilder(routeType: routeType, stopId: stopId, platformNumbers: platformNumbers, directionId: directionId, lookBackwards: lookBackwards, gtfs: gtfs, dateUtc: dateUtc, maxResults: maxResults, includeCancelled: includeCancelled, expand: expand, token: token, devid: devid, signature: signature).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     View departures for all routes from a stop
     - GET /v3/departures/route_type/{route_type}/stop/{stop_id}
     - parameter routeType: (path) Number identifying transport mode; values returned via RouteTypes API 
     - parameter stopId: (path) Identifier of stop; values returned by Stops API 
     - parameter platformNumbers: (query) Filter by platform number at stop (optional)
     - parameter directionId: (query) Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} (optional)
     - parameter lookBackwards: (query) Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. (optional)
     - parameter gtfs: (query) Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data (optional)
     - parameter dateUtc: (query) Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) (optional)
     - parameter maxResults: (query) Maximum number of results returned (optional)
     - parameter includeCancelled: (query) Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only (optional)
     - parameter expand: (query) List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - returns: RequestBuilder<V3DeparturesResponse> 
     */
    open class func departuresGetForStopWithRequestBuilder(routeType: RouteType_departuresGetForStop, stopId: Int, platformNumbers: [Int]? = nil, directionId: Int? = nil, lookBackwards: Bool? = nil, gtfs: Bool? = nil, dateUtc: Date? = nil, maxResults: Int? = nil, includeCancelled: Bool? = nil, expand: [String]? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil) -> RequestBuilder<V3DeparturesResponse> {
        var path = "/v3/departures/route_type/{route_type}/stop/{stop_id}"
        let routeTypePreEscape = "\(routeType.rawValue)"
        let routeTypePostEscape = routeTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{route_type}", with: routeTypePostEscape, options: .literal, range: nil)
        let stopIdPreEscape = "\(APIHelper.mapValueToPathItem(stopId))"
        let stopIdPostEscape = stopIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{stop_id}", with: stopIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "platform_numbers": platformNumbers, 
            "direction_id": directionId?.encodeToJSON(), 
            "look_backwards": lookBackwards, 
            "gtfs": gtfs, 
            "date_utc": dateUtc?.encodeToJSON(), 
            "max_results": maxResults?.encodeToJSON(), 
            "include_cancelled": includeCancelled, 
            "expand": expand, 
            "token": token, 
            "devid": devid, 
            "signature": signature
        ])

        let requestBuilder: RequestBuilder<V3DeparturesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter routeType
     */
    public enum RouteType_departuresGetForStopAndRoute: Int {
        case _0 = 0
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
    }

    /**
     * enum for parameter expand
     */
    public enum Expand_departuresGetForStopAndRoute: String {
        case all = "All"
        case stop = "Stop"
        case route = "Route"
        case run = "Run"
        case direction = "Direction"
        case disruption = "Disruption"
    }

    /**
     View departures for a specific route from a stop
     
     - parameter routeType: (path) Number identifying transport mode; values returned via RouteTypes API 
     - parameter stopId: (path) Identifier of stop; values returned by Stops API 
     - parameter routeId: (path) Identifier of route; values returned by Routes API - v3/routes 
     - parameter directionId: (query) Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} (optional)
     - parameter lookBackwards: (query) Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. (optional)
     - parameter gtfs: (query) Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data (optional)
     - parameter dateUtc: (query) Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) (optional)
     - parameter maxResults: (query) Maximum number of results returned (optional)
     - parameter includeCancelled: (query) Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only (optional)
     - parameter expand: (query) List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func departuresGetForStopAndRoute(routeType: RouteType_departuresGetForStopAndRoute, stopId: Int, routeId: String, directionId: Int? = nil, lookBackwards: Bool? = nil, gtfs: Bool? = nil, dateUtc: Date? = nil, maxResults: Int? = nil, includeCancelled: Bool? = nil, expand: [String]? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping ((_ data: V3DeparturesResponse?,_ error: Error?) -> Void)) {
        departuresGetForStopAndRouteWithRequestBuilder(routeType: routeType, stopId: stopId, routeId: routeId, directionId: directionId, lookBackwards: lookBackwards, gtfs: gtfs, dateUtc: dateUtc, maxResults: maxResults, includeCancelled: includeCancelled, expand: expand, token: token, devid: devid, signature: signature).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     View departures for a specific route from a stop
     - GET /v3/departures/route_type/{route_type}/stop/{stop_id}/route/{route_id}
     - parameter routeType: (path) Number identifying transport mode; values returned via RouteTypes API 
     - parameter stopId: (path) Identifier of stop; values returned by Stops API 
     - parameter routeId: (path) Identifier of route; values returned by Routes API - v3/routes 
     - parameter directionId: (query) Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} (optional)
     - parameter lookBackwards: (query) Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. (optional)
     - parameter gtfs: (query) Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data (optional)
     - parameter dateUtc: (query) Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) (optional)
     - parameter maxResults: (query) Maximum number of results returned (optional)
     - parameter includeCancelled: (query) Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only (optional)
     - parameter expand: (query) List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - returns: RequestBuilder<V3DeparturesResponse> 
     */
    open class func departuresGetForStopAndRouteWithRequestBuilder(routeType: RouteType_departuresGetForStopAndRoute, stopId: Int, routeId: String, directionId: Int? = nil, lookBackwards: Bool? = nil, gtfs: Bool? = nil, dateUtc: Date? = nil, maxResults: Int? = nil, includeCancelled: Bool? = nil, expand: [String]? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil) -> RequestBuilder<V3DeparturesResponse> {
        var path = "/v3/departures/route_type/{route_type}/stop/{stop_id}/route/{route_id}"
        let routeTypePreEscape = "\(routeType.rawValue)"
        let routeTypePostEscape = routeTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{route_type}", with: routeTypePostEscape, options: .literal, range: nil)
        let stopIdPreEscape = "\(APIHelper.mapValueToPathItem(stopId))"
        let stopIdPostEscape = stopIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{stop_id}", with: stopIdPostEscape, options: .literal, range: nil)
        let routeIdPreEscape = "\(APIHelper.mapValueToPathItem(routeId))"
        let routeIdPostEscape = routeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{route_id}", with: routeIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "direction_id": directionId?.encodeToJSON(), 
            "look_backwards": lookBackwards, 
            "gtfs": gtfs, 
            "date_utc": dateUtc?.encodeToJSON(), 
            "max_results": maxResults?.encodeToJSON(), 
            "include_cancelled": includeCancelled, 
            "expand": expand, 
            "token": token, 
            "devid": devid, 
            "signature": signature
        ])

        let requestBuilder: RequestBuilder<V3DeparturesResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
