//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//

import Foundation

class Routes {
    let session: URLSession
    
    init() {
        session = URLSession()
    }
    
    func getAllRoutes(routeTypes: [Int]?) throws {
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
        
        let signedURLComponents = try SigningService().signURL(urlComponents: requestURLComponents)

        guard let signedRequestURL = signedURLComponents.url else {
            throw PTVSwiftError.conversionToURLFailed
        }
        
        // Send request
        session.dataTask(with: signedRequestURL) { data, response, error in
            
            // Provide callback
            
        }
        

        
    }
}
