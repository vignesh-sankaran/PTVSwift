//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 22/11/19.
//

import XCTest
@testable import PTVSwift

final class RoutesTests: XCTest {
    
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
    
    func testGetAllRoutesURL() {
        let routesURLResult = Routes().getAllRoutesURL(routeTypes: [0])
        
        XCTAssertNoThrow(try routesURLResult.get(), "Routes URL request failed!")
    }
}
