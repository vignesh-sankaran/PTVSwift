import XCTest
@testable import PTVSwift

final class RoutesEndpointTests: XCTestCase {
    
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
    
    func testRoutesWithRouteTypes() {
        let expectation = XCTestExpectation(description: "Routes API request")
        
        let result = Routes().getAllRoutes(routeTypes: [0, 1])
        
        guard let publisher = try? result.get() else {
            return XCTFail("Publisher failed to be created!")
        }
        
        let cancellable = publisher
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { error in
                XCTFail("Failed with error: \(error)")
            }, receiveValue: { result in
                XCTAssert(result.routes.count > 0, "Directions does not contain any results!")
                expectation.fulfill()
            })

        XCTWaiter().wait(for: [expectation], timeout: 10.0)
    }
    
    func testRoutesWithoutRouteTypes() {
       let expectation = XCTestExpectation(description: "Routes API request")
        
        let result = Routes().getAllRoutes(routeTypes: nil)
        
        guard let publisher = try? result.get() else {
            return XCTFail("Publisher failed to be created!")
        }
        
        let cancellable = publisher
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { error in
                XCTFail("Failed with error: \(error)")
            }, receiveValue: { result in
                XCTAssert(result.routes.count > 0, "Directions does not contain any results!")
                expectation.fulfill()
            })

        XCTWaiter().wait(for: [expectation], timeout: 15.0)
    }
}
