//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//

import Foundation
import CommonCrypto

class SigningService {
    
    let credentials: Credentials
    
    init() {
        credentials = retrieveCredentials()
    }
    
    func signURL(urlComponents: URLComponents) -> URLComponents {
        // Create a local variable based on the variable
        var signedURLComponents = urlComponents
        
        // Append the developer ID to the Components
        let developerIDQueryItem = URLQueryItem(name: "devId", value: credentials.devId)
        signedURLComponents.queryItems = [developerIDQueryItem]
        
        
        // Get the part of the URL after the base URL
        guard let queryString = signedURLComponents.query else {
            fatalError("No query string found in signedURLComponents: \(signedURLComponents)")
        }
        
        let pathAndQuery = "\(signedURLComponents)?\(queryString)"
        
        // Convert the URL suffix and signing key into a Char array
        
        
        // Sign the URL suffix with HMAC-SHA1
        
        
        // Convert the signature into hex values
        
        
        // Append the signature to the URL
        

        // Return the URL
        return signedURLComponents
    }
}
