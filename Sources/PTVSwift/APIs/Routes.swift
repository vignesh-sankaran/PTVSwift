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
    
    func getAllRoutes(routeTypes: [Int]?) {
        
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

        // Sign the URLComponents
        let signedURLComponents = SigningService().signURL(urlComponents: requestURLComponents)
        
        // Convert to URL
        
        
        // Send request
        
        
        // Provide callback
        
        
    }
}
