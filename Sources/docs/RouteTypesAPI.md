# RouteTypesAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**routeTypesGetRouteTypes**](RouteTypesAPI.md#routetypesgetroutetypes) | **GET** /v3/route_types | View all route types and their names


# **routeTypesGetRouteTypes**
```swift
    open class func routeTypesGetRouteTypes(token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3RouteTypesResponse?, _ error: Error?) -> Void)
```

View all route types and their names

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View all route types and their names
RouteTypesAPI.routeTypesGetRouteTypes(token: token, devid: devid, signature: signature) { (response, error) in
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

[**V3RouteTypesResponse**](V3RouteTypesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

