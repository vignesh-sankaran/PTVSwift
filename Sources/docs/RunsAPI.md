# RunsAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runsForRoute**](RunsAPI.md#runsforroute) | **GET** /v3/runs/route/{route_id} | View all trip/service runs for a specific route ID
[**runsForRouteAndRouteType**](RunsAPI.md#runsforrouteandroutetype) | **GET** /v3/runs/route/{route_id}/route_type/{route_type} | View all trip/service runs for a specific route ID and route type
[**runsForRun**](RunsAPI.md#runsforrun) | **GET** /v3/runs/{run_id} | View all trip/service runs for a specific run ID
[**runsForRunAndRouteType**](RunsAPI.md#runsforrunandroutetype) | **GET** /v3/runs/{run_id}/route_type/{route_type} | View the trip/service run for a specific run ID and route type


# **runsForRoute**
```swift
    open class func runsForRoute(routeId: Int, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3RunsResponse?, _ error: Error?) -> Void)
```

View all trip/service runs for a specific route ID

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeId = 987 // Int | Identifier of route; values returned by Routes API - v3/routes.
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all trip/service runs for a specific route ID
RunsAPI.runsForRoute(routeId: routeId, token: token, devid: devid, signature: signature) { (response, error) in
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
 **routeId** | **Int** | Identifier of route; values returned by Routes API - v3/routes. | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3RunsResponse**](V3RunsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runsForRouteAndRouteType**
```swift
    open class func runsForRouteAndRouteType(routeId: Int, routeType: RouteType_runsForRouteAndRouteType, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3RunsResponse?, _ error: Error?) -> Void)
```

View all trip/service runs for a specific route ID and route type

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeId = 987 // Int | Identifier of route; values returned by Routes API - v3/routes.
let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all trip/service runs for a specific route ID and route type
RunsAPI.runsForRouteAndRouteType(routeId: routeId, routeType: routeType, token: token, devid: devid, signature: signature) { (response, error) in
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
 **routeId** | **Int** | Identifier of route; values returned by Routes API - v3/routes. | 
 **routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3RunsResponse**](V3RunsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runsForRun**
```swift
    open class func runsForRun(runId: Int, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3RunsResponse?, _ error: Error?) -> Void)
```

View all trip/service runs for a specific run ID

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let runId = 987 // Int | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all trip/service runs for a specific run ID
RunsAPI.runsForRun(runId: runId, token: token, devid: devid, signature: signature) { (response, error) in
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
 **runId** | **Int** | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3RunsResponse**](V3RunsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runsForRunAndRouteType**
```swift
    open class func runsForRunAndRouteType(runId: Int, routeType: RouteType_runsForRunAndRouteType, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3RunResponse?, _ error: Error?) -> Void)
```

View the trip/service run for a specific run ID and route type

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let runId = 987 // Int | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API
let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View the trip/service run for a specific run ID and route type
RunsAPI.runsForRunAndRouteType(runId: runId, routeType: routeType, token: token, devid: devid, signature: signature) { (response, error) in
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
 **runId** | **Int** | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API | 
 **routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3RunResponse**](V3RunResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

