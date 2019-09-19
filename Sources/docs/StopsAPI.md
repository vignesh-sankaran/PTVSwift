# StopsAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stopsStopDetails**](StopsAPI.md#stopsstopdetails) | **GET** /v3/stops/{stop_id}/route_type/{route_type} | View facilities at a specific stop (Metro and V/Line stations only)
[**stopsStopsByGeolocation**](StopsAPI.md#stopsstopsbygeolocation) | **GET** /v3/stops/location/{latitude},{longitude} | View all stops near a specific location
[**stopsStopsForRoute**](StopsAPI.md#stopsstopsforroute) | **GET** /v3/stops/route/{route_id}/route_type/{route_type} | View all stops on a specific route


# **stopsStopDetails**
```swift
    open class func stopsStopDetails(stopId: Int, routeType: RouteType_stopsStopDetails, stopLocation: Bool? = nil, stopAmenities: Bool? = nil, stopAccessibility: Bool? = nil, stopContact: Bool? = nil, stopTicket: Bool? = nil, gtfs: Bool? = nil, stopStaffing: Bool? = nil, stopDisruptions: Bool? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3StopResponse?, _ error: Error?) -> Void)
```

View facilities at a specific stop (Metro and V/Line stations only)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let stopId = 987 // Int | Identifier of stop; values returned by Stops API
let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let stopLocation = false // Bool | Indicates if stop location information will be returned (default = false) (optional)
let stopAmenities = false // Bool | Indicates if stop amenity information will be returned (default = false) (optional)
let stopAccessibility = false // Bool | Indicates if stop accessibility information will be returned (default = false) (optional)
let stopContact = false // Bool | Indicates if stop contact information will be returned (default = false) (optional)
let stopTicket = false // Bool | Indicates if stop ticket information will be returned (default = false) (optional)
let gtfs = false // Bool | Incdicates whether the stop_id is a GTFS ID or not (optional)
let stopStaffing = false // Bool | Indicates if stop staffing information will be returned (default = false) (optional)
let stopDisruptions = false // Bool | Indicates if stop disruption information will be returned (default = false) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View facilities at a specific stop (Metro and V/Line stations only)
StopsAPI.stopsStopDetails(stopId: stopId, routeType: routeType, stopLocation: stopLocation, stopAmenities: stopAmenities, stopAccessibility: stopAccessibility, stopContact: stopContact, stopTicket: stopTicket, gtfs: gtfs, stopStaffing: stopStaffing, stopDisruptions: stopDisruptions, token: token, devid: devid, signature: signature) { (response, error) in
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
 **stopId** | **Int** | Identifier of stop; values returned by Stops API | 
 **routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | 
 **stopLocation** | **Bool** | Indicates if stop location information will be returned (default &#x3D; false) | [optional] 
 **stopAmenities** | **Bool** | Indicates if stop amenity information will be returned (default &#x3D; false) | [optional] 
 **stopAccessibility** | **Bool** | Indicates if stop accessibility information will be returned (default &#x3D; false) | [optional] 
 **stopContact** | **Bool** | Indicates if stop contact information will be returned (default &#x3D; false) | [optional] 
 **stopTicket** | **Bool** | Indicates if stop ticket information will be returned (default &#x3D; false) | [optional] 
 **gtfs** | **Bool** | Incdicates whether the stop_id is a GTFS ID or not | [optional] 
 **stopStaffing** | **Bool** | Indicates if stop staffing information will be returned (default &#x3D; false) | [optional] 
 **stopDisruptions** | **Bool** | Indicates if stop disruption information will be returned (default &#x3D; false) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3StopResponse**](V3StopResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopsStopsByGeolocation**
```swift
    open class func stopsStopsByGeolocation(latitude: Float, longitude: Float, routeTypes: [Int]? = nil, maxResults: Int? = nil, maxDistance: Double? = nil, stopDisruptions: Bool? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3StopsByDistanceResponse?, _ error: Error?) -> Void)
```

View all stops near a specific location

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let latitude = 987 // Float | Geographic coordinate of latitude
let longitude = 987 // Float | Geographic coordinate of longitude
let routeTypes = [123] // [Int] | Filter by route_type; values returned via RouteTypes API (optional)
let maxResults = 987 // Int | Maximum number of results returned (default = 30) (optional)
let maxDistance = 987 // Double | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default = 300) (optional)
let stopDisruptions = false // Bool | Indicates if stop disruption information will be returned (default = false) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all stops near a specific location
StopsAPI.stopsStopsByGeolocation(latitude: latitude, longitude: longitude, routeTypes: routeTypes, maxResults: maxResults, maxDistance: maxDistance, stopDisruptions: stopDisruptions, token: token, devid: devid, signature: signature) { (response, error) in
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
 **latitude** | **Float** | Geographic coordinate of latitude | 
 **longitude** | **Float** | Geographic coordinate of longitude | 
 **routeTypes** | [**[Int]**](Int.md) | Filter by route_type; values returned via RouteTypes API | [optional] 
 **maxResults** | **Int** | Maximum number of results returned (default &#x3D; 30) | [optional] 
 **maxDistance** | **Double** | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default &#x3D; 300) | [optional] 
 **stopDisruptions** | **Bool** | Indicates if stop disruption information will be returned (default &#x3D; false) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3StopsByDistanceResponse**](V3StopsByDistanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopsStopsForRoute**
```swift
    open class func stopsStopsForRoute(routeId: Int, routeType: RouteType_stopsStopsForRoute, directionId: Int? = nil, stopDisruptions: Bool? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3StopsOnRouteResponse?, _ error: Error?) -> Void)
```

View all stops on a specific route

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeId = 987 // Int | Identifier of route; values returned by Routes API - v3/routes
let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let directionId = 987 // Int | An optional direction; values returned by Directions API. When this is set, stop sequence information is returned in the response. (optional)
let stopDisruptions = false // Bool | Indicates if stop disruption information will be returned (default = false) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all stops on a specific route
StopsAPI.stopsStopsForRoute(routeId: routeId, routeType: routeType, directionId: directionId, stopDisruptions: stopDisruptions, token: token, devid: devid, signature: signature) { (response, error) in
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
 **routeId** | **Int** | Identifier of route; values returned by Routes API - v3/routes | 
 **routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | 
 **directionId** | **Int** | An optional direction; values returned by Directions API. When this is set, stop sequence information is returned in the response. | [optional] 
 **stopDisruptions** | **Bool** | Indicates if stop disruption information will be returned (default &#x3D; false) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3StopsOnRouteResponse**](V3StopsOnRouteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

