# V3DeparturesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**departures** | [V3Departure] | Timetabled and real-time service departures | [optional] 
**stops** | [String:V3ResultStop] | A train station, tram stop, bus stop, regional coach stop or Night Bus stop | [optional] 
**routes** | [String:V3Route] | Train lines, tram routes, bus routes, regional coach routes, Night Bus routes | [optional] 
**runs** | [String:V3Run] | Individual trips/services of a route | [optional] 
**directions** | [String:V3Direction] | Directions of travel of route | [optional] 
**disruptions** | [String:V3Disruption] | Disruption information applicable to relevant routes or stops | [optional] 
**status** | [**V3Status**](V3Status.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


