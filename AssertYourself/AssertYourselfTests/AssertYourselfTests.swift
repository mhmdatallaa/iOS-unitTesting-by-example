//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by Mohamed Atallah on 12/10/2025.
//

import XCTest
@testable import AssertYourself

final class AssertYourselfTests: XCTestCase {

    func test_floatingPointAssert() {
        let num1 = 0.1
        let num2 = 0.2
        let sum = num1 + num2
        XCTAssertEqual(sum, 0.3, accuracy: 0.0001)
    }
}


struct SimpleStruct: CustomStringConvertible {
    let x: Double
    let y: Double
    
    var description: String {"(\(x), \(y))"}
}
