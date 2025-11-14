//
//  ViewControllerTests.swift
//  UserDefaultsTests
//
//  Created by Mohamed Atallah on 25/10/2025.
//

@testable import UserDefaults
import XCTest

final class ViewControllerTests: XCTestCase {
    private var sut: ViewController!
    private var userDefaults: FakeUserDefaults!
    
    override func setUp() {
        super.setUp()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyBoard.instantiateViewController(identifier: String(describing: ViewController.self))
        userDefaults = FakeUserDefaults()
        sut.userDefualts = userDefaults
    }
    
    override func tearDown() {
        sut = nil
        userDefaults = nil
        super.tearDown()
    }
    
    func test_viewDidLoad_with7InUserDefaults_shouldShow7InCounterLabel() {
        userDefaults.set(7, forKey: "count")
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.label.text, "7")
    }
    
    func test_tappingButton_with42InUserDefaults_shouldShow43InCounterLabel() {
        userDefaults.integers = ["count": 42]
        sut.loadViewIfNeeded()
        tab(sut.button)
        
        XCTAssertEqual(sut.label.text, "43")
    }
}
