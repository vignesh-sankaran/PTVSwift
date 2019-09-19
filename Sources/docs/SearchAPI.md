# SearchAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchSearch**](SearchAPI.md#searchsearch) | **GET** /v3/search/{search_term} | View stops, routes and myki ticket outlets that match the search term


# **searchSearch**
```swift
    open class func searchSearch(searchTerm: String, routeTypes: [Int]? = nil, latitude: Float? = nil, longitude: Float? = nil, maxDistance: Float? = nil, includeAddresses: Bool? = nil, includeOutlets: Bool? = nil, matchStopBySuburb: Bool? = nil, matchRouteBySuburb: Bool? = nil, matchStopByGtfsStopId: Bool? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3SearchResult?, _ error: Error?) -> Void)
```

View stops, routes and myki ticket outlets that match the search term

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let searchTerm = "searchTerm_example" // String | Search text (note: if search text is numeric and/or less than 3 characters, the API will only return routes)
let routeTypes = [123] // [Int] | Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified) (optional)
let latitude = 987 // Float | Filter by geographic coordinate of latitude (optional)
let longitude = 987 // Float | Filter by geographic coordinate of longitude (optional)
let maxDistance = 987 // Float | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (optional)
let includeAddresses = false // Bool | Placeholder for future development; currently unavailable (optional)
let includeOutlets = false // Bool | Indicates if outlets will be returned in response (default = true) (optional)
let matchStopBySuburb = false // Bool | Indicates whether to find stops by suburbs in the search term (default = true) (optional)
let matchRouteBySuburb = false // Bool | Indicates whether to find routes by suburbs in the search term (default = true) (optional)
let matchStopByGtfsStopId = false // Bool | Indicates whether to search for stops according to a metlink stop ID (default = false) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View stops, routes and myki ticket outlets that match the search term
SearchAPI.searchSearch(searchTerm: searchTerm, routeTypes: routeTypes, latitude: latitude, longitude: longitude, maxDistance: maxDistance, includeAddresses: includeAddresses, includeOutlets: includeOutlets, matchStopBySuburb: matchStopBySuburb, matchRouteBySuburb: matchRouteBySuburb, matchStopByGtfsStopId: matchStopByGtfsStopId, token: token, devid: devid, signature: signature) { (response, error) in
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
 **searchTerm** | **String** | Search text (note: if search text is numeric and/or less than 3 characters, the API will only return routes) | 
 **routeTypes** | [**[Int]**](Int.md) | Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified) | [optional] 
 **latitude** | **Float** | Filter by geographic coordinate of latitude | [optional] 
 **longitude** | **Float** | Filter by geographic coordinate of longitude | [optional] 
 **maxDistance** | **Float** | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters | [optional] 
 **includeAddresses** | **Bool** | Placeholder for future development; currently unavailable | [optional] 
 **includeOutlets** | **Bool** | Indicates if outlets will be returned in response (default &#x3D; true) | [optional] 
 **matchStopBySuburb** | **Bool** | Indicates whether to find stops by suburbs in the search term (default &#x3D; true) | [optional] 
 **matchRouteBySuburb** | **Bool** | Indicates whether to find routes by suburbs in the search term (default &#x3D; true) | [optional] 
 **matchStopByGtfsStopId** | **Bool** | Indicates whether to search for stops according to a metlink stop ID (default &#x3D; false) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3SearchResult**](V3SearchResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

