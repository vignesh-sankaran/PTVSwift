# PatternsAPI

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**patternsGetPatternByRun**](PatternsAPI.md#patternsgetpatternbyrun) | **GET** /v3/pattern/run/{run_id}/route_type/{route_type} | View the stopping pattern for a specific trip/service run


# **patternsGetPatternByRun**
```swift
    open class func patternsGetPatternByRun(runId: Int, routeType: RouteType_patternsGetPatternByRun, expand: [String], stopId: Int? = nil, dateUtc: Date? = nil, token: String? = nil, devid: String? = nil, signature: String? = nil, completion: @escaping (_ data: V3StoppingPattern?, _ error: Error?) -> Void)
```

View the stopping pattern for a specific trip/service run

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let runId = 987 // Int | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API
let routeType = 987 // Int | Number identifying transport mode; values returned via RouteTypes API
let expand = ["expand_example"] // [String] | Objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption. By default disruptions are expanded.
let stopId = 987 // Int | Filter by stop_id; values returned by Stops API (optional)
let dateUtc = Date() // Date | Filter by the date and time of the request (ISO 8601 UTC format) (optional)
let token = "token_example" // String | Please ignore (optional)
let devid = "devid_example" // String | Your developer id (optional)
let signature = "signature_example" // String | Authentication signature for request (optional)

// View the stopping pattern for a specific trip/service run
PatternsAPI.patternsGetPatternByRun(runId: runId, routeType: routeType, expand: expand, stopId: stopId, dateUtc: dateUtc, token: token, devid: devid, signature: signature) { (response, error) in
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
 **expand** | [**[String]**](String.md) | Objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption. By default disruptions are expanded. | 
 **stopId** | **Int** | Filter by stop_id; values returned by Stops API | [optional] 
 **dateUtc** | **Date** | Filter by the date and time of the request (ISO 8601 UTC format) | [optional] 
 **token** | **String** | Please ignore | [optional] 
 **devid** | **String** | Your developer id | [optional] 
 **signature** | **String** | Authentication signature for request | [optional] 

### Return type

[**V3StoppingPattern**](V3StoppingPattern.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

