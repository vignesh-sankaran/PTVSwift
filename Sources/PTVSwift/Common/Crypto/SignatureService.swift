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
        
        let developerIDQueryItem = URLQueryItem(name: "devid", value: credentials.devId)
        
        if signedURLComponents.queryItems == nil {
            signedURLComponents.queryItems = [developerIDQueryItem]
        } else {
            signedURLComponents.queryItems?.append(developerIDQueryItem)
        }
        
        guard let queryString = signedURLComponents.query else {
            throw PTVSwiftError.noQueryString
        }
        
        let urlSuffix = "\(urlComponents.path)?\(queryString)"
        
        guard let encodedUrlSuffix = urlSuffix.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            throw PTVSwiftError.signURLError
        }
        
        let signatureString = try generateSignature(urlSuffix: encodedUrlSuffix)
        let signatureQueryItem = URLQueryItem(name: "signature", value: signatureString)
        
        signedURLComponents.queryItems?.append(signatureQueryItem)

        return signedURLComponents
    }
    
    func generateSignature(urlSuffix: String) throws -> String {
        guard let urlSuffixData = urlSuffix.data(using: .ascii) else {
            throw PTVSwiftError.noQueryString
        }
        
        guard let securityKeyData = credentials.securityKey.data(using: .ascii) else {
            throw PTVSwiftError.noQueryString
        }
        
        let key = SymmetricKey(data: securityKeyData)
        let authenticationCode = HMAC<Insecure.SHA1>.authenticationCode(for: urlSuffixData, using: key)
       
        let signature = authenticationCode.flatMap { String(format: "%02x", $0) }
        
        return String(signature)
    }
}
