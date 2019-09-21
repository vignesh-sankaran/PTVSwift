//
// SearchAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class SearchAPI {
    /**
     * enum for parameter routeTypes
     */
    public enum RouteTypes_searchSearch: Int {
        case _0 = 0
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
    }

    /**
     View stops, routes and myki ticket outlets that match the search term
     
     - parameter searchTerm: (path) Search text (note: if search text is numeric and/or less than 3 characters, the API will only return routes) 
     - parameter routeTypes: (query) Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified) (optional)
     - parameter latitude: (query) Filter by geographic coordinate of latitude (optional)
     - parameter longitude: (query) Filter by geographic coordinate of longitude (optional)
     - parameter maxDistance: (query) Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (optional)
     - parameter includeAddresses: (query) Placeholder for future development; currently unavailable (optional)
     - parameter includeOutlets: (query) Indicates if outlets will be returned in response (default &#x3D; true) (optional)
     - parameter matchStopBySuburb: (query) Indicates whether to find stops by suburbs in the search term (default &#x3D; true) (optional)
     - parameter matchRouteBySuburb: (query) Indicates whether to find routes by suburbs in the search term (default &#x3D; true) (optional)
     - parameter matchStopByGtfsStopId: (query) Indicates whether to search for stops according to a metlink stop ID (default &#x3D; false) (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchSearch(searchTerm: String, routeTypes: [Int]? = nil, latitude: Float? = nil, longitude: Float? = nil, maxDistance: Float? = nil, includeAddresses: Bool? = nil, includeOutlets: Bool? = nil, matchStopBySuburb: Bool? = nil, matchRouteBySuburb: Bool? = nil, matchStopByGtfsStopId: Bool? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping ((_ data: V3SearchResult?,_ error: Error?) -> Void)) {
        searchSearchWithRequestBuilder(searchTerm: searchTerm, routeTypes: routeTypes, latitude: latitude, longitude: longitude, maxDistance: maxDistance, includeAddresses: includeAddresses, includeOutlets: includeOutlets, matchStopBySuburb: matchStopBySuburb, matchRouteBySuburb: matchRouteBySuburb, matchStopByGtfsStopId: matchStopByGtfsStopId, token: token, devid: devid, signature: signature).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     View stops, routes and myki ticket outlets that match the search term
     - GET /v3/search/{search_term}
     - parameter searchTerm: (path) Search text (note: if search text is numeric and/or less than 3 characters, the API will only return routes) 
     - parameter routeTypes: (query) Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified) (optional)
     - parameter latitude: (query) Filter by geographic coordinate of latitude (optional)
     - parameter longitude: (query) Filter by geographic coordinate of longitude (optional)
     - parameter maxDistance: (query) Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (optional)
     - parameter includeAddresses: (query) Placeholder for future development; currently unavailable (optional)
     - parameter includeOutlets: (query) Indicates if outlets will be returned in response (default &#x3D; true) (optional)
     - parameter matchStopBySuburb: (query) Indicates whether to find stops by suburbs in the search term (default &#x3D; true) (optional)
     - parameter matchRouteBySuburb: (query) Indicates whether to find routes by suburbs in the search term (default &#x3D; true) (optional)
     - parameter matchStopByGtfsStopId: (query) Indicates whether to search for stops according to a metlink stop ID (default &#x3D; false) (optional)
     - parameter token: (query) Please ignore (optional)
     - parameter devid: (query) Your developer id (optional)
     - parameter signature: (query) Authentication signature for request (optional)
     - returns: RequestBuilder<V3SearchResult> 
     */
    open class func searchSearchWithRequestBuilder(searchTerm: String, routeTypes: [Int]? = nil, latitude: Float? = nil, longitude: Float? = nil, maxDistance: Float? = nil, includeAddresses: Bool? = nil, includeOutlets: Bool? = nil, matchStopBySuburb: Bool? = nil, matchRouteBySuburb: Bool? = nil, matchStopByGtfsStopId: Bool? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil) -> RequestBuilder<V3SearchResult> {
        var path = "/v3/search/{search_term}"
        let searchTermPreEscape = "\(APIHelper.mapValueToPathItem(searchTerm))"
        let searchTermPostEscape = searchTermPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{search_term}", with: searchTermPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "route_types": routeTypes, 
            "latitude": latitude, 
            "longitude": longitude, 
            "max_distance": maxDistance, 
            "include_addresses": includeAddresses, 
            "include_outlets": includeOutlets, 
            "match_stop_by_suburb": matchStopBySuburb, 
            "match_route_by_suburb": matchRouteBySuburb, 
            "match_stop_by_gtfs_stop_id": matchStopByGtfsStopId, 
            "token": token, 
            "devid": devid, 
            "signature": signature
        ])

        let requestBuilder: RequestBuilder<V3SearchResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
