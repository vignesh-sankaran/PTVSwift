//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//
import Combine
import Foundation

public class Routes {
    
    public init() {}

    public func getAllRoutes(routeTypes: [Int]?) -> Result<AnyPublisher<V3Routes, Error>, Error> {
        var urlParameters: [String: Any]? = nil
        
        if let routeTypes = routeTypes {
            urlParameters = ["route_types": routeTypes]
        }
        
        let urlResult = ConstructURL.generateURL(path: "routes", parameters: urlParameters)
        
        switch urlResult {
        case .success(let url):
            return .success(URLSession
                .shared
                .dataTaskPublisher(for: url)
                .map { $0.data }
                .decode(type: V3Routes.self, decoder: JSONDecoder())
                .eraseToAnyPublisher())
        case .failure(let error):
            return .failure(error)
        }
    }
}
