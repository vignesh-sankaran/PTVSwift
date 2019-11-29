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
        
        XCTAssertNoThrow(try result.get(), "Failed to successfully generate a URL!")
    }
    
    func testConstructURLWithSingleQueryItem() {
        
    }
    
    func testConstructURLWithMultipleQueryItems() {
        
    }
}
