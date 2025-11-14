//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import XCTest
@testable import HardDependencies

class ClosurePropertyViewControllerTests: XCTestCase {
    
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        sut.makeAnalytics = { Analytics() }
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
