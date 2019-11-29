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
        
        // Evaluate if there are any query items
        if let parameters = parameters {
            // - Convert to percent encoded if they exist
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


