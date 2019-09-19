# OutletsAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**outletsGetAllOutlets**](OutletsAPI.md#outletsgetalloutlets) | **GET** /v3/outlets | List all ticket outlets
[**outletsGetOutletsByGeolocation**](OutletsAPI.md#outletsgetoutletsbygeolocation) | **GET** /v3/outlets/location/{latitude},{longitude} | List ticket outlets near a specific location


# **outletsGetAllOutlets**
```swift
    open class func outletsGetAllOutlets(maxResults: Int? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3OutletResponse?, _ error: Error?) -> Void)
```

List all ticket outlets

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let maxResults = 987 // Int | Maximum number of results returned (default = 30) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// List all ticket outlets
OutletsAPI.outletsGetAllOutlets(maxResults: maxResults, token: token, devid: devid, signature: signature) { (response, error) in
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
 **maxResults** | **Int** | Maximum number of results returned (default &#x3D; 30) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3OutletResponse**](V3OutletResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **outletsGetOutletsByGeolocation**
```swift
    open class func outletsGetOutletsByGeolocation(latitude: Float, longitude: Float, maxDistance: Double? = nil, maxResults: Int? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3OutletGeolocationResponse?, _ error: Error?) -> Void)
```

List ticket outlets near a specific location

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let latitude = 987 // Float | Geographic coordinate of latitude
let longitude = 987 // Float | Geographic coordinate of longitude
let maxDistance = 987 // Double | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default = 300) (optional)
let maxResults = 987 // Int | Maximum number of results returned (default = 30) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// List ticket outlets near a specific location
OutletsAPI.outletsGetOutletsByGeolocation(latitude: latitude, longitude: longitude, maxDistance: maxDistance, maxResults: maxResults, token: token, devid: devid, signature: signature) { (response, error) in
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
 **maxDistance** | **Double** | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default &#x3D; 300) | [optional] 
 **maxResults** | **Int** | Maximum number of results returned (default &#x3D; 30) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3OutletGeolocationResponse**](V3OutletGeolocationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

