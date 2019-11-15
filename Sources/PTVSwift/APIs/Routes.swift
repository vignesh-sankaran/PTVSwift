//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//

import Foundation

public class Routes {
    
    public init() {}

    public func getAllRoutes(routeTypes: [Int]?, requestCompletionHandler: @escaping (V3Routes?, PTVSwiftError?) -> ())  {
        let requestURLComponents = constructURL(routeTypes: routeTypes)

        guard let signedURLComponents = try? SigningService().signURL(urlComponents: requestURLComponents) else {
            return requestCompletionHandler(nil, PTVSwiftError.signURLError)
        }
        
        guard let signedRequestURL = signedURLComponents.url else {
            return requestCompletionHandler(nil, PTVSwiftError.conversionToURLError)
        }
        
        let dataTask = createDataTask(url: signedRequestURL, requestCompletionHandler: requestCompletionHandler)
        
        dataTask.resume()
    }
    
    func constructURL(routeTypes: [Int]?) -> URLComponents {
        var routeTypesQuery: URLQueryItem?
        
        if let routeTypes = routeTypes {
            let routeTypesString = generateRouteTypesString(routeTypes)
            routeTypesQuery = URLQueryItem(name: "route_types", value: routeTypesString)
        }
        
        var requestURLComponents = URLComponents()
        requestURLComponents.scheme = PROTOCOL
        requestURLComponents.host = BASE_URL
        requestURLComponents.path = "/\(VERSION)/routes"
        
        if let routeTypesQuery = routeTypesQuery {
            requestURLComponents.queryItems = [routeTypesQuery]
        }
        
        return requestURLComponents
    }
    
    func createDataTask(url: URL, requestCompletionHandler: @escaping (V3Routes?, PTVSwiftError?) -> ()) -> URLSessionDataTask {
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
                    let routes = try decoder.decode(V3Routes.self, from: data)
                    
                    requestCompletionHandler(routes, nil)
                }
                
            } catch {
                requestCompletionHandler(nil, PTVSwiftError.decodeResponseModelError(error))
            }
        }
        
        return dataTask
    }
    
    func generateRouteTypesString(_ routeTypes: [Int]) -> String {
        let routeTypesRawString = routeTypes.description
        let routeTypesString = routeTypesRawString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        
        return routeTypesString
    }
}
