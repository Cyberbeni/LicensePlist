import Foundation
import XCTest
import APIKit
@testable import LicensePlistCore

class ResultOperatoinTests: XCTestCase {

    func testBlocking() {
        let operation = ResultOperation<String, NSError> { _ in
            return .success("hello")
        }
        XCTAssertEqual(operation.resultSync(), .success("hello"))
    }
}
