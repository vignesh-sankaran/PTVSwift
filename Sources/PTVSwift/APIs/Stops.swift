//
//  File.swift
//  
//
//  Created by Home on 1/11/19.
//

import Foundation

public class Stops {
    
    public init() {}
    
    public func getStopsByRouteId(routeId: Int, routeType: Int, requestCompletionHandler: @escaping (V3Stops?, PTVSwiftError?) -> ()) {
        
        let requestURLComponents = constructURL(routeId: routeId, routeType: routeType)
        
        guard let signedURLComponents = try? SigningService().signURL(urlComponents: requestURLComponents) else {
            return requestCompletionHandler(nil, PTVSwiftError.signURLError)
        }
        
        guard let signedRequestURL = signedURLComponents.url else {
            return requestCompletionHandler(nil, PTVSwiftError.conversionToURLError)
        }
        
        let dataTask = createDataTask(url: signedRequestURL, requestCompletionHandler: requestCompletionHandler)
        
        dataTask.resume()
    }
    
    public func getStopsByRouteIdURL(routeId: Int, routeType: Int) -> Result<URL, PTVSwiftError> {
        
        let requestURLComponents = constructURL(routeId: routeId, routeType: routeType)
        
        guard let signedURLComponents = try? SigningService().signURL(urlComponents: requestURLComponents) else {
            return .failure(PTVSwiftError.signURLError)
        }
        
        guard let signedRequestURL = signedURLComponents.url else {
            return .failure(PTVSwiftError.conversionToURLError)
        }
        
        return .success(signedRequestURL)
    }
    
    func constructURL(routeId: Int, routeType: Int) -> URLComponents {
        var requestURLComponents = URLComponents()
        
        requestURLComponents.scheme = PROTOCOL
        requestURLComponents.host = BASE_URL
        requestURLComponents.path = "/\(VERSION)/stops/route/\(routeId)/route_type/\(routeType)"
        
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
