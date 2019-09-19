# V3Departure

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stopId** | **Int** | Stop identifier | [optional] 
**routeId** | **Int** | Route identifier | [optional] 
**runId** | **Int** | Trip/service run identifier | [optional] 
**directionId** | **Int** | Direction of travel identifier | [optional] 
**disruptionIds** | **[Int64]** | Disruption information identifier(s) | [optional] 
**scheduledDepartureUtc** | **Date** | Scheduled (i.e. timetabled) departure time and date in ISO 8601 UTC format | [optional] 
**estimatedDepartureUtc** | **Date** | Real-time estimate of departure time and date in ISO 8601 UTC format | [optional] 
**atPlatform** | **Bool** | Indicates if the metropolitan train service is at the platform at the time of query; returns false for other modes | [optional] 
**platformNumber** | **String** | Platform number at stop (metropolitan train only; returns null for other modes) | [optional] 
**flags** | **String** | Flag indicating special condition for run (e.g. RR Reservations Required, GC Guaranteed Connection, DOO Drop Off Only, PUO Pick Up Only, MO Mondays only, TU Tuesdays only, WE Wednesdays only, TH Thursdays only, FR Fridays only, SS School days only; ignore E flag) | [optional] 
**departureSequence** | **Int** | Chronological sequence of the departure for the run on the route. Order ascendingly by this field to get chronological order (earliest first) of departures with the same route_id and run_id. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


