//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllerTests
//
//  Created by Mohamed Atallah on 16/10/2025.
//

import XCTest
@testable import LoadViewController


final class CodeBasedViewControllerTests: XCTestCase {
    func test_loading() {
        let sut = CodeBasedViewController(data: "Dummy")
        
        sut.loadViewIfNeeded()
    }
}
