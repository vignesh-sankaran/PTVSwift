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
    
    func testGenerateSignature() {
        // Set up mock credentials
        Configuration.devId = "0"
        Configuration.securityKey = "0"
        
        let urlSuffix = "/v3/routes?route_types=%5B0%5D&devid=0"
        let result = try? SigningService().generateSignature(urlSuffix: urlSuffix)
        
        guard let signature = result else {
            return XCTFail("Failed to generate signature!")
        }
        
        XCTAssertEqual(signature.uppercased(), "CB865179BB438544A910B9CE26905B54F9FA25EB", "Signatures are not equal!")
    }
}
