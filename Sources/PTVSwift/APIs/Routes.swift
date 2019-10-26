//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//

import Foundation

class Routes {

    func getAllRoutes(routeTypes: [Int]?, requestCompletionHandler: @escaping (V3Routes?, PTVSwiftError?) -> ())  {
        var routeTypesQuery: URLQueryItem?
        
        if let routeTypes = routeTypes {
            routeTypesQuery = URLQueryItem(name: "route_types", value: routeTypes.description)
        }
        
        var requestURLComponents = URLComponents()
        requestURLComponents.scheme = PROTOCOL
        requestURLComponents.host = BASE_URL
        requestURLComponents.path = "/\(VERSION)/routes"
        
        if let routeTypesQuery = routeTypesQuery {
            requestURLComponents.queryItems?.append(routeTypesQuery)
        }
        
        do {
            let signedURLComponents = try SigningService().signURL(urlComponents: requestURLComponents)
            
            guard let signedRequestURL = signedURLComponents.url else {
                return requestCompletionHandler(nil, PTVSwiftError.conversionToURLError)
            }
            
            let dataTask = URLSession.shared.dataTask(with: signedRequestURL) { data, response, error in
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
                        let routes = try decoder.decode(V3Routes.self, from: data)
                        
                        requestCompletionHandler(routes, nil)
                    }
                    
                } catch {
                    requestCompletionHandler(nil, PTVSwiftError.decodeResponseModelError(error))
                }
            }
            
            dataTask.resume()
        } catch {
            requestCompletionHandler(nil, error as? PTVSwiftError)
        }
    }
}
