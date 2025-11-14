//
//  ClosureInitializerViewControllerT.swift
//  HardDependenciesTests
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import XCTest
@testable import HardDependencies

class ClosureInitializerViewControllerTests: XCTestCase {
    
    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController(makeAnalytics: {Analytics()})
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
