# V3BulkDeparturesUpdateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**departures** | [V3Departure] | Timetabled and real-time service departures | [optional] 
**routeType** | **Int** | Transport mode identifier | [optional] 
**stopId** | **Int** | Stop identifier | [optional] 
**requestedRouteDirection** | [**V3BulkDeparturesRouteDirectionResponse**](V3BulkDeparturesRouteDirectionResponse.md) |  | [optional] 
**routeDirectionStatus** | **Int** | The status of the route direction (changed | unchanged).              If changed, requests should change the requested_route_direction for the route_direction supplied. | [optional] 
**routeDirection** | [**V3BulkDeparturesRouteDirectionResponse**](V3BulkDeparturesRouteDirectionResponse.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


