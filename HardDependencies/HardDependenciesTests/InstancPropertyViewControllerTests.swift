//
//  InstancPropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import XCTest
@testable import HardDependencies

class InstancPropertyViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let sut: InstancePropertyViewController = storyBoard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analytics = Analytics()
        sut.loadViewIfNeeded()
        
        
        sut.viewDidAppear(false)
    }
}
