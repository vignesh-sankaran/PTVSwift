# V3Run

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runId** | **Int** | Trip/service run identifier | [optional] 
**routeId** | **Int** | Route identifier | [optional] 
**routeType** | **Int** | Transport mode identifier | [optional] 
**finalStopId** | **Int** | stop_id of final stop of run | [optional] 
**destinationName** | **String** | Name of destination of run | [optional] 
**status** | **String** | Status of metropolitan train run; returns \&quot;scheduled\&quot; for other modes | [optional] 
**directionId** | **Int** | Direction of travel identifier | [optional] 
**runSequence** | **Int** | Chronological sequence of the trip/service run on the route in direction. Order ascendingly by this field to get chronological order (earliest first) of runs with the same route_id and direction_id. | [optional] 
**expressStopCount** | **Int** | The number of remaining skipped/express stations for the run/service from a stop | [optional] 
**vehiclePosition** | [**V3VehiclePosition**](V3VehiclePosition.md) |  | [optional] 
**vehicleDescriptor** | [**V3VehicleDescriptor**](V3VehicleDescriptor.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


