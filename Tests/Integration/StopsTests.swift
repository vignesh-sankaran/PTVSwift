//
//  File.swift
//  
//
//  Created by Home on 3/11/19.
//

import XCTest
@testable import PTVSwift

final class StopsTests: XCTestCase {

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
    
    func testStopsByRouteId() {
        let expectation = XCTestExpectation(description: "Stops API request")
        
        Stops().getStopsByRouteId(routeId: 1063, routeType: 0, directionId: nil, stopDisruptions: nil) { response, error in
            XCTAssertNotNil(response, "Response is nil!")
            XCTAssertNil(error, "Error has occurred!")
            
            expectation.fulfill()
        }
        
        XCTWaiter().wait(for: [expectation], timeout: 10.0)
    }
}
