//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//

import Foundation
import CommonCrypto
import CryptoKit

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
        
        let urlSuffix = "\(urlComponents.path)?\(queryString)"
        let urlSuffixData = urlSuffix.data(using: .utf8)!
        
        let securityKeyData = credentials.securityKey.data(using: .utf8)!
        let key = SymmetricKey(data: securityKeyData)
        
        // Use CryptoKit to create a HMAC-SHA1 authentication token
        let authenticationCode = HMAC<Insecure.SHA1>.authenticationCode(for: urlSuffixData, using: key)

        // Convert signature to hex string
        let signature = authenticationCode.flatMap { x in
            String(format: "%02x", x)
        }
        
        let signatureString = String(signature)
        
        // Append the signature to the URL
        let signatureQueryItem = URLQueryItem(name: "signature", value: signatureString)
        
        signedURLComponents.queryItems?.append(signatureQueryItem)

        // Return the URL
        return signedURLComponents
    }
}
