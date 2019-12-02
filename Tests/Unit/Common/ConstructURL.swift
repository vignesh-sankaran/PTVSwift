//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 28/11/19.
//

import XCTest
@testable import PTVSwift

final class ConstructURLTests: XCTestCase {
 
    override func setUp() {
        guard let devId = ProcessInfo.processInfo.environment["DEV_ID"] else {
            fatalError("DEV_ID is not set as an environment variable!")
        }
        
        guard let securityKey = ProcessInfo.processInfo.environment["SECURITY_KEY"] else {
            fatalError("SECURITY_KEY is not set as environment variable!")
        }
        
        Configuration.devId = devId
        Configuration.securityKey = securityKey
    }
    
    func testConstructURLWithNoQueryItems() {
        let pathString = "routes"
        let result = ConstructURL.generateURL(path: pathString, parameters: nil)
        
        XCTAssertNoThrow(try result.get(), "URL failed to be generated!")
    }
    
    func testConstructURLWithSingleArrayQueryItem() {
        let result = ConstructURL.generateURL(path: "routes", parameters: ["route_types": [0]])
        
        guard let url = try? result.get() else {
            return XCTFail("URL failed to be generated!")
        }
        
        XCTAssert((url.query?.contains("route_types"))!, "Query is not contained in the query string!")
    }
}
