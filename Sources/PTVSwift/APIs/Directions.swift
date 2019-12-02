//
//  Directions.swift
//  
//
//  Created by Vignesh Sankaran on 28/11/19.
//

import Combine
import Foundation

public class Directions {
    
    public init() {}
    
    public func getAllRoutes(routeId: Int) -> Result<URL, Error> {
        let path = "directions/route/\(routeId)"
        let urlResult = ConstructURL.generateURL(path: path, parameters: nil)
        
        return urlResult
    }
}
