//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 2/12/19.
//

import Combine
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
    
    func testGetAllDirectionsForRoute() {
        let expectation = XCTestExpectation(description: "Directions API request")
        let result = Directions().getAllDirectionsForRoute(routeId: 8)
        
        guard let publisher = try? result.get() else {
            return XCTFail("Publisher failed to be created!")
        }
        
        // Named constant needs to be declared, else a runtime error is thrown
        //
        // This test will sometimes fail due to the error closure being non
        // deterministically called even though the request is successful.
        let cancellable = publisher
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { error in
                XCTFail("Failed with error: \(error)")
                expectation.fulfill()
            }, receiveValue: { result in
                XCTAssert(result.directions.count > 0, "Directions does not contain any results!")
                expectation.fulfill()
            })
        
        XCTWaiter().wait(for: [expectation], timeout: 10.0)
    }
}
