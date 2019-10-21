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

    guard let credentialsBundle = Bundle(identifier: "Credentials") else {
        fatalError("No Credentials Bundle found!")
    }
    
    guard let credentialsPath = credentialsBundle.path(forResource: "credentials", ofType: "json") else {
        fatalError("No credentials.json file found!")
    }
    
    let credentialsURL = URL(fileURLWithPath: credentialsPath)
    
    guard let rawCredentialsFile = try? Data(contentsOf: credentialsURL, options: .alwaysMapped) else {
        fatalError("Unable to load credentials.json!")
    }

    guard let credentials = try? JSONDecoder().decode(Credentials.self, from: rawCredentialsFile) else {
        fatalError("Unable to convert credentials.json into Credentials struct!")
    }
    
    return credentials
}
