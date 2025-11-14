//
//  MySingletonViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import XCTest
@testable import HardDependencies

final class MySingletonViewControllerTests: XCTestCase {
    override class func setUp() {
        super.setUp()
        MysingletonAnalytics.subbedInstance = MysingletonAnalytics()
    }
    
    override class func tearDown() {
        MysingletonAnalytics.subbedInstance = nil
        super.tearDown()
    }
    
    func test_voiewDidAppear() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
