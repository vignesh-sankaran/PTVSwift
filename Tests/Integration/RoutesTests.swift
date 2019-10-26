import XCTest
@testable import PTVSwift

final class RoutesTest: XCTestCase {
    
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
        
        Routes().getAllRoutes(routeTypes: [0]) { response, error in
            XCTAssertNotNil(response, "Response is nil!")
            XCTAssertNil(error, "Error has occurred!")
            
            expectation.fulfill()
        }
        
        XCTWaiter().wait(for: [expectation], timeout: 10.0)
    }
    
    func testRoutesWithoutRouteTypes() {
        
    }
}
