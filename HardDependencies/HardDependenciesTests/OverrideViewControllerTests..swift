//
//  OverrideViewControllerTests..swift
//  HardDependenciesTests
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import XCTest
@testable import HardDependencies


class OverrideViewControllerTests: XCTestCase {
    override class func setUp() {
        super.setUp()
        
    }
    
    override class func tearDown() {
        
        super.tearDown()
    }
    
    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
    
    
}


private class TestableOverrideViewController: OverrideViewController {
//    override func analytics() -> Analytics { Analytics() }
    override func analytics() -> Analytics { Analytics() }
}
