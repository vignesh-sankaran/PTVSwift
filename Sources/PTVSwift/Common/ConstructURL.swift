//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 28/11/19.
//

import Foundation

class ConstructURL {
    
    public init() {}
    
    static func generateURL(path: String, parameters: [String: Any]?) -> Result<URL, Error> {
        var urlComponents = URLComponents()
        
        urlComponents.scheme = PROTOCOL
        urlComponents.host = BASE_URL
        urlComponents.path = "/\(VERSION)/\(path)"
        
        if let parameters = parameters {
            for parameter in parameters {
                
                // Possible edge cases:
                // - Query parameter is an array of Ints
                if let array = parameter.value as? Array<Int> {
                    let queryItem = URLQueryItem(name: parameter.key, value: array.description)
                    if let _ = urlComponents.queryItems {
                        urlComponents.queryItems?.append(queryItem)
                    } else {
                        urlComponents.queryItems = [queryItem]
                    }
                }
            }
        }

        guard let signedURLComponents = try? SigningService().signURL(urlComponents: urlComponents) else {
            return .failure(PTVSwiftError.conversionToURLError)
        }
        
        guard let signedRequestURL = signedURLComponents.url else {
            return .failure(PTVSwiftError.conversionToURLError)
        }
        
        return .success(signedRequestURL)
    }
}
