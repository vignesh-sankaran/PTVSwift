import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Unit.allTests),
        testCase(Integration.allTests),
    ]
}
#endif
