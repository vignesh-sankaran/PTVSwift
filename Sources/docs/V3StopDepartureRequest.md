# V3StopDepartureRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeType** | **Int** | Number identifying transport mode; values returned via RouteTypes API | [optional] 
**stopId** | **Int** | Identifier of stop; values returned by Stops API | [optional] 
**maxResults** | **Int** | Maximum number of results returned | [optional] 
**gtfs** | **Bool** | Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data and route_directions[x].route_id parameters will accept route_gtfs_id data | [optional] 
**routeDirections** | [V3StopDepartureRequestRouteDirection] | The route directions to find departures for at this stop. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


