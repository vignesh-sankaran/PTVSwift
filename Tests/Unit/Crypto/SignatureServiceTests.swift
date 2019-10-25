//
//  File.swift
//  
//
//  Created by Home on 18/10/19.
//

import Foundation
import XCTest
@testable import PTVSwift

final class SignatureServiceTests: XCTestCase {
    
    var urlComponents = URLComponents()
    
    override func setUp() {
       guard let devId = ProcessInfo.processInfo.environment["DEV_ID"] else {
            fatalError("DEV_ID is not set as an environment variable!")
        }
        
        guard let securityKey = ProcessInfo.processInfo.environment["SECURITY_KEY"] else {
            fatalError("SECURITY_KEY is not set as environment variable!")
        }
        
        Configuration.devId = devId
        Configuration.securityKey = securityKey
        
        urlComponents.scheme = PROTOCOL
        urlComponents.host = BASE_URL
        urlComponents.path = "/\(VERSION)/routes"
    }
    
    func testSignURL() {
        let signedURLComponents = try? SigningService().signURL(urlComponents: urlComponents)
        
        XCTAssertNotNil(signedURLComponents, "Signed URL is nil!")
    }
}
