//
//  File.swift
//  
//
//  Created by Home on 18/10/19.
//

import XCTest
@testable import PTVSwift

final class SignatureServiceTests: XCTestCase {
    
    
    
    override func setUp() {
        
    }
    
    func testSignURL() {
        Configuration.devId = ""
        Configuration.securityKey = ""
        
        var urlComponents = URLComponents()
        
        urlComponents.scheme = PROTOCOL
        urlComponents.host = BASE_URL
        urlComponents.path = "/\(VERSION)/routes"
        
        // Test that the signature component is not nil
        let signedURLComponents = SigningService().signURL(urlComponents: urlComponents)
        
        XCTAssertNotNil(signedURLComponents, "Signed URL is nil!")
    }
}
