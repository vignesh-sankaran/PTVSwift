//
// PatternsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class PatternsAPI {
    /**
     * enum for parameter routeType
     */
    public enum RouteType_patternsGetPatternByRun: Int {
        case _0 = 0
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
    }

    /**
     * enum for parameter expand
     */
    public enum Expand_patternsGetPatternByRun: String {
        case all = "All"
        case stop = "Stop"
        case route = "Route"
        case run = "Run"
        case direction = "Direction"
        case disruption = "Disruption"
    }

    /**
     View the stopping pattern for a specific trip/service run
     
     - parameter runId: (path) Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API 
     - parameter routeType: (path) Number identifying transport mode; values returned via RouteTypes API 
     - parameter expand: (query) Objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption. By default disruptions are expanded. 
     - parameter stopId: (query) Filter by stop_id; values returned by Stops API (optional)
     - parameter dateUtc: (query) Filter by the date and time of the request (ISO 8601 UTC format) (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patternsGetPatternByRun(runId: Int, routeType: RouteType_patternsGetPatternByRun, expand: [String], stopId: Int? = nil, dateUtc: Date? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping ((_ data: V3StoppingPattern?,_ error: Error?) -> Void)) {
        patternsGetPatternByRunWithRequestBuilder(runId: runId, routeType: routeType, expand: expand, stopId: stopId, dateUtc: dateUtc, token: token, devid: devid, signature: signature).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     View the stopping pattern for a specific trip/service run
     - GET /v3/pattern/run/{run_id}/route_type/{route_type}
     - parameter runId: (path) Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API 
     - parameter routeType: (path) Number identifying transport mode; values returned via RouteTypes API 
     - parameter expand: (query) Objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption. By default disruptions are expanded. 
     - parameter stopId: (query) Filter by stop_id; values returned by Stops API (optional)
     - parameter dateUtc: (query) Filter by the date and time of the request (ISO 8601 UTC format) (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - returns: RequestBuilder<V3StoppingPattern> 
     */
    open class func patternsGetPatternByRunWithRequestBuilder(runId: Int, routeType: RouteType_patternsGetPatternByRun, expand: [String], stopId: Int? = nil, dateUtc: Date? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil) -> RequestBuilder<V3StoppingPattern> {
        var path = "/v3/pattern/run/{run_id}/route_type/{route_type}"
        let runIdPreEscape = "\(APIHelper.mapValueToPathItem(runId))"
        let runIdPostEscape = runIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{run_id}", with: runIdPostEscape, options: .literal, range: nil)
        let routeTypePreEscape = "\(routeType.rawValue)"
        let routeTypePostEscape = routeTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{route_type}", with: routeTypePostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "expand": expand, 
            "stop_id": stopId?.encodeToJSON(), 
            "date_utc": dateUtc?.encodeToJSON(), 
            "token": token, 
            "devid": devid, 
            "signature": signature
        ])

        let requestBuilder: RequestBuilder<V3StoppingPattern>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
