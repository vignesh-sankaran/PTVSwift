# V3BulkDeparturesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**responses** | [V3BulkDeparturesUpdateResponse] | Contains departures for the requested stop and route(s). It includes details as to the route_direction and whether it is still valid. | [optional] 
**stops** | [String:V3BulkDeparturesStopResponse] | A train station, tram stop, bus stop, regional coach stop or Night Bus stop | [optional] 
**routes** | [V3Route] | Train lines, tram routes, bus routes, regional coach routes, Night Bus routes | [optional] 
**runs** | [V3Run] | Individual trips/services of a route | [optional] 
**directions** | [V3Direction] | Directions of travel of route | [optional] 
**disruptions** | [String:V3Disruption] | Disruption information applicable to relevant routes or stops | [optional] 
**status** | [**V3Status**](V3Status.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


