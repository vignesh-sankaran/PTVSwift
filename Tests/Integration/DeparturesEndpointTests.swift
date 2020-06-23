//
//  DeparturesEndpointTests.swift
//  
//
//  Created by Vignesh Sankaran on 29/1/20.
//

import Combine
import XCTest
@testable import PTVSwift

final class DeparturesEndpointsTests: XCTestCase {
    
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
    
    func testGetAllDeparturesForStop() {
        let expectation = XCTestExpectation(description: "Departures API request")
        let result = Departures().getDepartures(routeType: 0, stopId: 1182)
        
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
                XCTAssert(result.departures.count > 0, "Departures contains no results!")
                expectation.fulfill()
            })
        
        XCTWaiter().wait(for: [expectation], timeout: 10.0)
    }
    
    func testGetAllDeparturesWithRouteIdForStop() {
        let expectation = XCTestExpectation(description: "Departures API request")
        let result = Departures().getDepartures(routeType: 0, stopId: 1182, routeId: 1)
        
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
                XCTAssert(result.departures.count > 0, "Departures contains no results!")
                expectation.fulfill()
            })
        
        XCTWaiter().wait(for: [expectation], timeout: 10.0)
    }
}
