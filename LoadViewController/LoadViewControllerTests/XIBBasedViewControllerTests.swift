//
//  XIBBasedViewControllerTests.swift
//  LoadViewControllerTests
//
//  Created by Mohamed Atallah on 16/10/2025.
//

import XCTest
@testable import LoadViewController


final class XIBBasedViewControllerTests: XCTestCase {
    func test_loading() {
        let sut = XIBBasedViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }
}
