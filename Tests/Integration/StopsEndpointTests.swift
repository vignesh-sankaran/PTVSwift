//
//  File.swift
//  
//
//  Created by Home on 3/11/19.
//

import XCTest
@testable import PTVSwift

final class StopsEndpointTests: XCTestCase {

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
        
        let result = Stops().getStopsByRouteId(routeId: 12, routeType: 0)
        
        guard let publisher = try? result.get() else {
            return XCTFail("Publisher failed to be created!")
        }
        
        let cancellable = publisher
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { error in
                if case .failure(let failureError) = error {
                    XCTFail("Failed with error: \(failureError)")
                }
            }, receiveValue: { result in
                XCTAssert(result.stops.count > 0, "Directions does not contain any results!")
                expectation.fulfill()
            })
        
        XCTWaiter().wait(for: [expectation], timeout: 10.0)
    }
}
