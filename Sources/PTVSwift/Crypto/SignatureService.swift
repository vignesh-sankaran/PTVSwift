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
    
    init() throws {
        credentials = try retrieveCredentials()
    }
    
    func signURL(urlComponents: URLComponents) throws -> URLComponents {
        var signedURLComponents = urlComponents
        
        let developerIDQueryItem = URLQueryItem(name: "devId", value: credentials.devId)
        signedURLComponents.queryItems = [developerIDQueryItem]
        
        guard let queryString = signedURLComponents.query else {
            throw PTVSwiftError.noQueryString
        }
        
        let urlSuffix = "\(urlComponents.path)?\(queryString)"
        
        let signatureString = try generateSignature(urlSuffix: urlSuffix)
        let signatureQueryItem = URLQueryItem(name: "signature", value: signatureString)
        
        signedURLComponents.queryItems?.append(signatureQueryItem)

        return signedURLComponents
    }
    
    func generateSignature(urlSuffix: String) throws -> String {
        guard let urlSuffixData = urlSuffix.data(using: .utf8) else {
            throw PTVSwiftError.noQueryString
        }
        
        guard let securityKeyData = credentials.securityKey.data(using: .utf8) else {
            throw PTVSwiftError.noQueryString
        }
        
        let key = SymmetricKey(data: securityKeyData)
        
        let authenticationCode = HMAC<Insecure.SHA1>.authenticationCode(for: urlSuffixData, using: key)
        
        let signature = authenticationCode.flatMap { x in
            String(format: "%02x", x)
        }
        
        return String(signature)
    }
    
}
