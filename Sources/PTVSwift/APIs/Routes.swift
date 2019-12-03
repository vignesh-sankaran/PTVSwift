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
        var urlParameters: [String: Any]? = nil
        
        if let routeTypes = routeTypes {
            urlParameters = ["route_types": routeTypes]
        }
        
        let urlResult = ConstructURL.generateURL(path: "routes", parameters: urlParameters)
        
        switch urlResult {
        case .success(let url):
            let dataTask = createDataTask(url: url, requestCompletionHandler: requestCompletionHandler)
            
            dataTask.resume()
        case .failure(_):
            return requestCompletionHandler(nil, PTVSwiftError.conversionToURLError)
        }
    }
    
    func createDataTask(url: URL, requestCompletionHandler: @escaping (V3Routes?, PTVSwiftError?) -> ()) -> URLSessionDataTask {
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                requestCompletionHandler(nil, PTVSwiftError.clientError(error))
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode > 200 {
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
}
