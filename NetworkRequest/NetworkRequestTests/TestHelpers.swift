//
//  TestHelpers.swift
//  NetworkRequestTests
//
//  Created by Mohamed Atallah on 26/10/2025.
//

import XCTest

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func verifyMethodCalledOnce(
    methodName: String,
    callCount: Int,
    describeArguments: @autoclosure () -> String,
    file: StaticString = #file,
    line: UInt = #line) -> Bool {
        if callCount == 0 {
            XCTFail("Wanted but not invoked: \(methodName)",
                    file: file, line: line)
            return false
        }
        if callCount > 1 {
            XCTFail("Wanted 1 time but was called \(callCount) times. " +
                    "\(methodName) with \(describeArguments())"
                    ,
                    file: file, line: line)
            return false
        }
        return true
    }

