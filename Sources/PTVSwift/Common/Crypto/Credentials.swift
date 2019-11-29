//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//

import Foundation

public struct Credentials: Decodable {
    let devId: String
    let securityKey: String
}

func retrieveCredentials() throws -> Credentials {
    guard let devId = Configuration.devId else {
        throw PTVSwiftError.noDevId
    }
    
    guard let securityKey = Configuration.securityKey else {
        throw PTVSwiftError.noSecurityKey
    }
    
    let credentials = Credentials(devId: devId, securityKey: securityKey)

    return credentials
}
