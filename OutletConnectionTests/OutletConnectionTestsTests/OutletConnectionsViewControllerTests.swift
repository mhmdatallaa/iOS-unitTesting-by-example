//
//  OutletConnectionsViewControllerTests.swift
//  OutletConnectionTestsTests
//
//  Created by Mohamed Atallah on 20/10/2025.
//

import XCTest
@testable import OutletConnectionTests

final class OutletConnectionsViewControllerTests: XCTestCase {
    
    func test_outlets_shouldBeConnected() {
        let sut = OutletConnectionsViewController()
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label, "label")
        XCTAssertNotNil(sut.button, "button")
    }
}
