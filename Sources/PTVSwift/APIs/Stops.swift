//
//  File.swift
//  
//
//  Created by Home on 1/11/19.
//

import Foundation

public class Stops {
    
    public init() {}
    
    public func getStopsByRouteId(routeId: Int, routeType: Int, directionId: Int?, stopDisruptions: Bool?, requestCompletionHandler: @escaping (V3Stops?, PTVSwiftError?) -> ()) {
        
        let requestURLComponents = constructURL(routeId: routeId, routeType: routeType, directionId: directionId, stopDisruptions: stopDisruptions)
        
        guard let signedURLComponents = try? SigningService().signURL(urlComponents: requestURLComponents) else {
            return requestCompletionHandler(nil, PTVSwiftError.signURLError)
        }
        
        guard let signedRequestURL = signedURLComponents.url else {
            return requestCompletionHandler(nil, PTVSwiftError.conversionToURLError)
        }
        
        let dataTask = createDataTask(url: signedRequestURL, requestCompletionHandler: requestCompletionHandler)
        
        dataTask.resume()
    }
    
    func constructURL(routeId: Int, routeType: Int, directionId: Int?, stopDisruptions: Bool?) -> URLComponents {
        let routeIdQueryItem = URLQueryItem(name: "route_id", value: String(routeId))
        let routeTypeQueryItem = URLQueryItem(name: "route_type", value: String(routeType))
        
        var directionIdQueryItem: URLQueryItem?
        var stopDisruptionsQueryItem: URLQueryItem?
        
        if let directionId = directionId {
            directionIdQueryItem = URLQueryItem(name: "direction_id", value: String(directionId))
        }
        
        if let stopDisruptions = stopDisruptions {
            stopDisruptionsQueryItem = URLQueryItem(name: "stop_disruptions", value: stopDisruptions.description)
        }
        
        var requestURLComponents = URLComponents()
        
        requestURLComponents.scheme = PROTOCOL
        requestURLComponents.host = BASE_URL
        requestURLComponents.path = "/\(VERSION)/routes"
        
        requestURLComponents.queryItems = [routeIdQueryItem, routeTypeQueryItem]

        if let directionIdQueryItem = directionIdQueryItem {
            requestURLComponents.queryItems?.append(directionIdQueryItem)
        }
        
        if let stopDisruptionsQueryItem = stopDisruptionsQueryItem {
            requestURLComponents.queryItems?.append(stopDisruptionsQueryItem)
        }
        
        return requestURLComponents
    }
    
    func createDataTask(url: URL, requestCompletionHandler: @escaping (V3Stops?, PTVSwiftError?) -> ()) -> URLSessionDataTask {
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                requestCompletionHandler(nil, PTVSwiftError.clientError(error))
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode > 299 {
                    requestCompletionHandler(nil, PTVSwiftError.requestError(statusCode: httpResponse.statusCode))
                }
            }
            
            let decoder = JSONDecoder()
            
            do {
                if let data = data {
                    let stops = try decoder.decode(V3Stops.self, from: data)
                    
                    requestCompletionHandler(stops, nil)
                }
                
            } catch {
                requestCompletionHandler(nil, PTVSwiftError.decodeResponseModelError(error))
            }
        }
        
        return dataTask
    }
}
