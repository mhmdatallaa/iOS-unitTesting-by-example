//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import XCTest
@testable import HardDependencies

final class InstanceInitializerViewControllerTests: XCTestCase {
    
    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
