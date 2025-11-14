//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllerTests
//
//  Created by Mohamed Atallah on 16/10/2025.
//

import XCTest
@testable import LoadViewController

final class StoryboardBasedViewControllerTests: XCTestCase {
    
    func test_loading() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: StoryboardBasedViewController = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }

}
