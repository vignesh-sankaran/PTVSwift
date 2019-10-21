//
//  File.swift
//  
//
//  Created by Home on 17/10/19.
//

import Foundation

struct Credentials: Decodable {
    let devId: String
    let securityKey: String
}

func retrieveCredentials() -> Credentials {
    guard let devId = Configuration.devId else {
        fatalError("devId has not been configured!")
    }
    
    guard let securityKey = Configuration.securityKey else {
        fatalError("securityKey has not been configured!")
    }
    
    let credentials = Credentials(devId: devId, securityKey: securityKey)

    return credentials
}
