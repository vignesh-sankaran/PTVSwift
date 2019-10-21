//
//  File.swift
//  
//
//  Created by Home on 18/10/19.
//

import XCTest
@testable import PTVSwift

final class SignatureServiceTests: XCTestCase {
    
    var urlComponents = URLComponents()
    
    override func setUp() {
        Configuration.devId = ""
        Configuration.securityKey = ""
        
        urlComponents.scheme = PROTOCOL
        urlComponents.host = BASE_URL
        urlComponents.path = "/\(VERSION)/routes"
    }
    
    func testSignURL() {
        // Test that the signature component is not nil
        let signedURLComponents = SigningService().signURL(urlComponents: urlComponents)
        
        XCTAssertNotNil(signedURLComponents, "Signed URL is nil!")
    }
}
