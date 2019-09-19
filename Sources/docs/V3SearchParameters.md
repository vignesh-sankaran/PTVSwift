# V3SearchParameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeTypes** | **[Int]** | Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified) | [optional] 
**latitude** | **Float** | Filter by geographic coordinate of latitude | [optional] 
**longitude** | **Float** | Filter by geographic coordinate of longitude | [optional] 
**maxDistance** | **Float** | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters | [optional] 
**includeAddresses** | **Bool** | Placeholder for future development; currently unavailable | [optional] 
**includeOutlets** | **Bool** | Indicates if outlets will be returned in response (default &#x3D; true) | [optional] 
**matchStopBySuburb** | **Bool** | Indicates whether to find stops by suburbs in the search term (default &#x3D; true) | [optional] 
**matchRouteBySuburb** | **Bool** | Indicates whether to find routes by suburbs in the search term (default &#x3D; true) | [optional] 
**matchStopByGtfsStopId** | **Bool** | Indicates whether to search for stops according to a metlink stop ID (default &#x3D; false) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


