# V3BulkDeparturesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requests** | [V3StopDepartureRequest] | Collection of departure requests | 
**dateUtc** | **Date** | Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) | [optional] 
**lookBackwards** | **Bool** | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. | [optional] 
**includeCancelled** | **Bool** | Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only | [optional] 
**expand** | **[String]** | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


