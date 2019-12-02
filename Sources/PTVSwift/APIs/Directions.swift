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
    
    public func getAllDirectionsForRoute(routeId: Int) -> Result<AnyPublisher<V3Directions, Error>, Error> {
        let path = "directions/route/\(routeId)"
        let urlResult = ConstructURL.generateURL(path: path, parameters: nil)
        
        switch urlResult {
        case .success(let url):
            return .success(URLSession
                .shared
                .dataTaskPublisher(for: url)
                .map { $0.data }
                .decode(type: V3Directions.self, decoder: JSONDecoder())
                .eraseToAnyPublisher())
        case .failure(let error):
            return .failure(error)
        }
    }
}
