//
//  Departures.swift
//  
//
//  Created by Vignesh Sankaran on 29/1/20.
//

import Combine
import Foundation

public class Departures {
    
    public init() {}
    
    public func getDepartures(routeType: Int, stopId: Int, routeId: Int? = nil) -> Result<AnyPublisher<V3Departures, Error>, Error> {
        var path = "departures/route_type/\(routeType)/stop/\(stopId)"
        
        if let routeId = routeId {
            path += "/route/\(routeId)"
        }
        
        let urlResult = ConstructURL.generateURL(path: path, parameters: nil)
        
        switch urlResult {
        case .success(let url):
            return .success(URLSession
                .shared
                .dataTaskPublisher(for: url)
                .map { $0.data }
                .decode(type: V3Departures.self, decoder: JSONDecoder())
                .eraseToAnyPublisher())
        case .failure(let error):
            return .failure(error)
        }
    }
}
