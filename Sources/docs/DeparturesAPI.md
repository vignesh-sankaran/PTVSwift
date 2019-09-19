# DeparturesAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**departuresGetForStop**](DeparturesAPI.md#departuresgetforstop) | **GET** /v3/departures/route_type/{route_type}/stop/{stop_id} | View departures for all routes from a stop
[**departuresGetForStopAndRoute**](DeparturesAPI.md#departuresgetforstopandroute) | **GET** /v3/departures/route_type/{route_type}/stop/{stop_id}/route/{route_id} | View departures for a specific route from a stop


# **departuresGetForStop**
```swift
    open class func departuresGetForStop(routeType: RouteType_departuresGetForStop, stopId: Int, platformNumbers: [Int]? = nil, directionId: Int? = nil, lookBackwards: Bool? = nil, gtfs: Bool? = nil, dateUtc: Date? = nil, maxResults: Int? = nil, includeCancelled: Bool? = nil, expand: [String]? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DeparturesResponse?, _ error: Error?) -> Void)
```

View departures for all routes from a stop

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let stopId = 987 // Int | Identifier of stop; values returned by Stops API
let platformNumbers = [123] // [Int] | Filter by platform number at stop (optional)
let directionId = 987 // Int | Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} (optional)
let lookBackwards = false // Bool | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0. (optional)
let gtfs = false // Bool | Indicates that stop_id parameter will accept \"GTFS stop_id\" data (optional)
let dateUtc = Date() // Date | Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time) (optional)
let maxResults = 987 // Int | Maximum number of results returned (optional)
let includeCancelled = false // Bool | Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only (optional)
let expand = ["expand_example"] // [String] | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View departures for all routes from a stop
DeparturesAPI.departuresGetForStop(routeType: routeType, stopId: stopId, platformNumbers: platformNumbers, directionId: directionId, lookBackwards: lookBackwards, gtfs: gtfs, dateUtc: dateUtc, maxResults: maxResults, includeCancelled: includeCancelled, expand: expand, token: token, devid: devid, signature: signature) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | 
 **stopId** | **Int** | Identifier of stop; values returned by Stops API | 
 **platformNumbers** | [**[Int]**](Int.md) | Filter by platform number at stop | [optional] 
 **directionId** | **Int** | Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | [optional] 
 **lookBackwards** | **Bool** | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. | [optional] 
 **gtfs** | **Bool** | Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data | [optional] 
 **dateUtc** | **Date** | Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) | [optional] 
 **maxResults** | **Int** | Maximum number of results returned | [optional] 
 **includeCancelled** | **Bool** | Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only | [optional] 
 **expand** | [**[String]**](String.md) | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DeparturesResponse**](V3DeparturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **departuresGetForStopAndRoute**
```swift
    open class func departuresGetForStopAndRoute(routeType: RouteType_departuresGetForStopAndRoute, stopId: Int, routeId: String, directionId: Int? = nil, lookBackwards: Bool? = nil, gtfs: Bool? = nil, dateUtc: Date? = nil, maxResults: Int? = nil, includeCancelled: Bool? = nil, expand: [String]? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DeparturesResponse?, _ error: Error?) -> Void)
```

View departures for a specific route from a stop

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let stopId = 987 // Int | Identifier of stop; values returned by Stops API
let routeId = "routeId_example" // String | Identifier of route; values returned by Routes API - v3/routes
let directionId = 987 // Int | Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} (optional)
let lookBackwards = false // Bool | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0. (optional)
let gtfs = false // Bool | Indicates that stop_id parameter will accept \"GTFS stop_id\" data (optional)
let dateUtc = Date() // Date | Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time) (optional)
let maxResults = 987 // Int | Maximum number of results returned (optional)
let includeCancelled = false // Bool | Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only (optional)
let expand = ["expand_example"] // [String] | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View departures for a specific route from a stop
DeparturesAPI.departuresGetForStopAndRoute(routeType: routeType, stopId: stopId, routeId: routeId, directionId: directionId, lookBackwards: lookBackwards, gtfs: gtfs, dateUtc: dateUtc, maxResults: maxResults, includeCancelled: includeCancelled, expand: expand, token: token, devid: devid, signature: signature) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | 
 **stopId** | **Int** | Identifier of stop; values returned by Stops API | 
 **routeId** | **String** | Identifier of route; values returned by Routes API - v3/routes | 
 **directionId** | **Int** | Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | [optional] 
 **lookBackwards** | **Bool** | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. | [optional] 
 **gtfs** | **Bool** | Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data | [optional] 
 **dateUtc** | **Date** | Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) | [optional] 
 **maxResults** | **Int** | Maximum number of results returned | [optional] 
 **includeCancelled** | **Bool** | Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only | [optional] 
 **expand** | [**[String]**](String.md) | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DeparturesResponse**](V3DeparturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

