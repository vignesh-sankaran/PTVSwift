# V3Disruption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disruptionId** | **Int64** | Disruption information identifier | [optional] 
**title** | **String** | Headline title summarising disruption information | [optional] 
**url** | **String** | URL of relevant article on PTV website | [optional] 
**description** | **String** | Description of the disruption | [optional] 
**disruptionStatus** | **String** | Status of the disruption (e.g. \&quot;Planned\&quot;, \&quot;Current\&quot;) | [optional] 
**disruptionType** | **String** | Type of disruption | [optional] 
**publishedOn** | **Date** | Date and time disruption information is published on PTV website, in ISO 8601 UTC format | [optional] 
**lastUpdated** | **Date** | Date and time disruption information was last updated by PTV, in ISO 8601 UTC format | [optional] 
**fromDate** | **Date** | Date and time at which disruption begins, in ISO 8601 UTC format | [optional] 
**toDate** | **Date** | Date and time at which disruption ends, in ISO 8601 UTC format (returns null if unknown) | [optional] 
**routes** | [V3DisruptionRoute] | Route relevant to a disruption (if applicable) | [optional] 
**stops** | [V3DisruptionStop] | Stop relevant to a disruption (if applicable) | [optional] 
**colour** | **String** |  | [optional] 
**displayOnBoard** | **Bool** |  | [optional] 
**displayStatus** | **Bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


