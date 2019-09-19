# RoutesAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**routesOneOrMoreRoutes**](RoutesAPI.md#routesoneormoreroutes) | **GET** /v3/routes | View route names and numbers for all routes
[**routesRouteFromId**](RoutesAPI.md#routesroutefromid) | **GET** /v3/routes/{route_id} | View route name and number for specific route ID


# **routesOneOrMoreRoutes**
```swift
    open class func routesOneOrMoreRoutes(routeTypes: [Int]? = nil, routeName: String? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3RouteResponse?, _ error: Error?) -> Void)
```

View route names and numbers for all routes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeTypes = [123] // [Int] | Filter by route_type; values returned via RouteTypes API (optional)
let routeName = "routeName_example" // String | Filter by name  of route (accepts partial route name matches) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View route names and numbers for all routes
RoutesAPI.routesOneOrMoreRoutes(routeTypes: routeTypes, routeName: routeName, token: token, devid: devid, signature: signature) { (response, error) in
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
 **routeName** | **String** | Filter by name  of route (accepts partial route name matches) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3RouteResponse**](V3RouteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routesRouteFromId**
```swift
    open class func routesRouteFromId(routeId: Int, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3RouteResponse?, _ error: Error?) -> Void)
```

View route name and number for specific route ID

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let routeId = 987 // Int | Identifier of route; values returned by Departures, Directions and Disruptions APIs
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View route name and number for specific route ID
RoutesAPI.routesRouteFromId(routeId: routeId, token: token, devid: devid, signature: signature) { (response, error) in
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
 **routeId** | **Int** | Identifier of route; values returned by Departures, Directions and Disruptions APIs | 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3RouteResponse**](V3RouteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

