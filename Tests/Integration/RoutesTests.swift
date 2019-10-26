import XCTest
@testable import PTVSwift

final class RoutesTest: XCTestRun {
    
    func testRoutesWithRouteTypes() {
        Routes().getAllRoutes(routeTypes: [0]) { response, error in
            XCTAssertNotNil(response, "Response is nil!")
            XCTAssertNil(error, "Error has occurred!")
        }
    }
    
    func testRoutesWithoutRouteTypes() {
        
    }
}
