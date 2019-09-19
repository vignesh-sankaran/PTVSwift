# DisruptionsAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disruptionsGetAllDisruptions**](DisruptionsAPI.md#disruptionsgetalldisruptions) | **GET** /v3/disruptions | View all disruptions for all route types
[**disruptionsGetDisruptionById**](DisruptionsAPI.md#disruptionsgetdisruptionbyid) | **GET** /v3/disruptions/{disruption_id} | View a specific disruption
[**disruptionsGetDisruptionModes**](DisruptionsAPI.md#disruptionsgetdisruptionmodes) | **GET** /v3/disruptions/modes | Get all disruption modes
[**disruptionsGetDisruptionsByRoute**](DisruptionsAPI.md#disruptionsgetdisruptionsbyroute) | **GET** /v3/disruptions/route/{route_id} | View all disruptions for a particular route
[**disruptionsGetDisruptionsByRouteAndStop**](DisruptionsAPI.md#disruptionsgetdisruptionsbyrouteandstop) | **GET** /v3/disruptions/route/{route_id}/stop/{stop_id} | View all disruptions for a particular route and stop
[**disruptionsGetDisruptionsByStop**](DisruptionsAPI.md#disruptionsgetdisruptionsbystop) | **GET** /v3/disruptions/stop/{stop_id} | View all disruptions for a particular stop


# **disruptionsGetAllDisruptions**
```swift
    open class func disruptionsGetAllDisruptions(routeTypes: [Int]? = nil, disruptionModes: [Int]? = nil, disruptionStatus: DisruptionStatus_disruptionsGetAllDisruptions? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DisruptionsResponse?, _ error: Error?) -> Void)
```

View all disruptions for all route types

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeTypes = [123] // [Int] | Filter by route_type; values returned via RouteTypes API (optional)
let disruptionModes = [123] // [Int] | Filter by disruption_mode; values returned via v3/disruptions/modes API (optional)
let disruptionStatus = "disruptionStatus_example" // String | Filter by status of disruption (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all disruptions for all route types
DisruptionsAPI.disruptionsGetAllDisruptions(routeTypes: routeTypes, disruptionModes: disruptionModes, disruptionStatus: disruptionStatus, token: token, devid: devid, signature: signature) { (response, error) in
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
 **routeTypes** | [**[Int]**](Int.md) | Filter by route_type; values returned via RouteTypes API | [optional] 
 **disruptionModes** | [**[Int]**](Int.md) | Filter by disruption_mode; values returned via v3/disruptions/modes API | [optional] 
 **disruptionStatus** | **String** | Filter by status of disruption | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DisruptionsResponse**](V3DisruptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disruptionsGetDisruptionById**
```swift
    open class func disruptionsGetDisruptionById(disruptionId: Int64, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DisruptionResponse?, _ error: Error?) -> Void)
```

View a specific disruption

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let disruptionId = 987 // Int64 | Identifier of disruption; values returned by Disruptions API - /v3/disruptions OR /v3/disruptions/route/{route_id}
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View a specific disruption
DisruptionsAPI.disruptionsGetDisruptionById(disruptionId: disruptionId, token: token, devid: devid, signature: signature) { (response, error) in
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
 **disruptionId** | **Int64** | Identifier of disruption; values returned by Disruptions API - /v3/disruptions OR /v3/disruptions/route/{route_id} | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DisruptionResponse**](V3DisruptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disruptionsGetDisruptionModes**
```swift
    open class func disruptionsGetDisruptionModes(token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DisruptionModesResponse?, _ error: Error?) -> Void)
```

Get all disruption modes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// Get all disruption modes
DisruptionsAPI.disruptionsGetDisruptionModes(token: token, devid: devid, signature: signature) { (response, error) in
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
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DisruptionModesResponse**](V3DisruptionModesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disruptionsGetDisruptionsByRoute**
```swift
    open class func disruptionsGetDisruptionsByRoute(routeId: Int, disruptionStatus: DisruptionStatus_disruptionsGetDisruptionsByRoute? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DisruptionsResponse?, _ error: Error?) -> Void)
```

View all disruptions for a particular route

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeId = 987 // Int | Identifier of route; values returned by Routes API - v3/routes
let disruptionStatus = "disruptionStatus_example" // String | Filter by status of disruption (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all disruptions for a particular route
DisruptionsAPI.disruptionsGetDisruptionsByRoute(routeId: routeId, disruptionStatus: disruptionStatus, token: token, devid: devid, signature: signature) { (response, error) in
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
 **disruptionStatus** | **String** | Filter by status of disruption | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DisruptionsResponse**](V3DisruptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disruptionsGetDisruptionsByRouteAndStop**
```swift
    open class func disruptionsGetDisruptionsByRouteAndStop(routeId: Int, stopId: Int, disruptionStatus: DisruptionStatus_disruptionsGetDisruptionsByRouteAndStop? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DisruptionsResponse?, _ error: Error?) -> Void)
```

View all disruptions for a particular route and stop

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeId = 987 // Int | Identifier of route; values returned by Routes API - v3/routes
let stopId = 987 // Int | Identifier of stop; values returned by Stops API - v3/stops
let disruptionStatus = "disruptionStatus_example" // String | Filter by status of disruption (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all disruptions for a particular route and stop
DisruptionsAPI.disruptionsGetDisruptionsByRouteAndStop(routeId: routeId, stopId: stopId, disruptionStatus: disruptionStatus, token: token, devid: devid, signature: signature) { (response, error) in
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
 **stopId** | **Int** | Identifier of stop; values returned by Stops API - v3/stops | 
 **disruptionStatus** | **String** | Filter by status of disruption | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DisruptionsResponse**](V3DisruptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disruptionsGetDisruptionsByStop**
```swift
    open class func disruptionsGetDisruptionsByStop(stopId: Int, disruptionStatus: DisruptionStatus_disruptionsGetDisruptionsByStop? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3DisruptionsResponse?, _ error: Error?) -> Void)
```

View all disruptions for a particular stop

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let stopId = 987 // Int | Identifier of stop; values returned by Stops API - v3/stops
let disruptionStatus = "disruptionStatus_example" // String | Filter by status of disruption (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all disruptions for a particular stop
DisruptionsAPI.disruptionsGetDisruptionsByStop(stopId: stopId, disruptionStatus: disruptionStatus, token: token, devid: devid, signature: signature) { (response, error) in
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
 **stopId** | **Int** | Identifier of stop; values returned by Stops API - v3/stops | 
 **disruptionStatus** | **String** | Filter by status of disruption | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3DisruptionsResponse**](V3DisruptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

