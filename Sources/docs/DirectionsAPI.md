# DirectionsAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directionsForDirection**](DirectionsAPI.md#directionsfordirection) | **GET** /v3/directions/{direction_id} | View all routes for a direction of travel
[**directionsForDirectionAndType**](DirectionsAPI.md#directionsfordirectionandtype) | **GET** /v3/directions/{direction_id}/route_type/{route_type} | View all routes of a particular type for a direction of travel
[**directionsForRoute**](DirectionsAPI.md#directionsforroute) | **GET** /v3/directions/route/{route_id} | View directions that a route travels in


# **directionsForDirection**
```swift
    open class func directionsForDirection(directionId: Int, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DirectionsResponse?, _ error: Error?) -> Void)
```

View all routes for a direction of travel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let directionId = 987 // Int | Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id}
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all routes for a direction of travel
DirectionsAPI.directionsForDirection(directionId: directionId, token: token, devid: devid, signature: signature) { (response, error) in
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
 **directionId** | **Int** | Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DirectionsResponse**](V3DirectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directionsForDirectionAndType**
```swift
    open class func directionsForDirectionAndType(directionId: Int, routeType: RouteType_directionsForDirectionAndType, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DirectionsResponse?, _ error: Error?) -> Void)
```

View all routes of a particular type for a direction of travel

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let directionId = 987 // Int | Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id}
let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all routes of a particular type for a direction of travel
DirectionsAPI.directionsForDirectionAndType(directionId: directionId, routeType: routeType, token: token, devid: devid, signature: signature) { (response, error) in
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
 **directionId** | **Int** | Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | 
 **routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DirectionsResponse**](V3DirectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directionsForRoute**
```swift
    open class func directionsForRoute(routeId: Int, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DirectionsResponse?, _ error: Error?) -> Void)
```

View directions that a route travels in

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeId = 987 // Int | Identifier of route; values returned by Routes API - v3/routes
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View directions that a route travels in
DirectionsAPI.directionsForRoute(routeId: routeId, token: token, devid: devid, signature: signature) { (response, error) in
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
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DirectionsResponse**](V3DirectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

