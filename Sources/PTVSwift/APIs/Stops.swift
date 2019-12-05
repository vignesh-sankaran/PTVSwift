//
//  File.swift
//  
//
//  Created by Home on 1/11/19.
//

import Combine
import Foundation

public class Stops {
    
    public init() {}
    
    public func getStopsByRouteId(routeId: Int, routeType: Int) -> Result<AnyPublisher<V3Stops, Error>, Error> {
        let path = "stops/route/\(routeId)/route_type/\(routeType)"
        
        let urlResult = ConstructURL.generateURL(path: path, parameters: nil)
        
        switch urlResult {
        case .success(let url):
            return .success(URLSession
                .shared
                .dataTaskPublisher(for: url)
                .map { $0.data }
                .decode(type: V3Stops.self, decoder: JSONDecoder())
                .eraseToAnyPublisher())
        case .failure(let error):
            return .failure(error)
        }
    }
}
