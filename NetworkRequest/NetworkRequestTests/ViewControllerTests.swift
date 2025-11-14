//
//  ViewControllerTests.swift
//  NetworkRequestTests
//
//  Created by Mohamed Atallah on 26/10/2025.
//

import XCTest
@testable import NetworkRequest

final class ViewControllerTests: XCTestCase {
    var sut: ViewController!
    var session: MockURLSession!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        session = MockURLSession()
        sut.session = session
    }
    
    override func tearDown() {
        sut = nil
        session = nil
        super.tearDown()
    }
    
    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
        sut.loadViewIfNeeded()
        tap(sut.button)
        
        session.verifyDataTask(with: URLRequest(url: URL(string: "https://itunes.apple.com/search?media=ebook&term=out%20from%20boneville")!))
    }
}
