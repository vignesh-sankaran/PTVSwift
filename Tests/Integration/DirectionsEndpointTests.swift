//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 2/12/19.
//

import XCTest
@testable import PTVSwift

final class DirectionsEndpointsTests: XCTestCase {
    
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
    
    func testGetAllRoutes() {
        let urlResult = Directions().getAllRoutes(routeId: 8)
        
        XCTAssertNoThrow(try url.get(), "Valid URL not generated!")
    }
}
