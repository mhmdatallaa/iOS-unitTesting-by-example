//
//  View.swift
//  NetworkResponseTests
//
//  Created by Mohamed Atallah on 29/10/2025.
//

import XCTest
@testable import NetworkResponse

final class ViewControllerTests: XCTestCase {
    private var sut: ViewController!
    private var session: SpyURLSession!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        session = SpyURLSession()
        sut.session = session
        super.setUp()
    }
    
    override func tearDown() {
        sut = nil
        session = nil
        super.tearDown()
    }
    
    
    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
        sut.loadViewIfNeeded()
        tap(sut.button)
        
        XCTAssertEqual(session.dataTaskCallcount, 1)
    }
    
    func test_searchForBookNetworkCall_withSuccessResponse_shouldSaveDataInResults() {
        sut.loadViewIfNeeded()
        tap(sut.button)
        session.dataTaskArgsCompletionHandler.first?(jsonData(), response(statusCode: 200), nil)
        XCTAssertEqual(sut.results, [
            SearchResult(artistName: "Artist", trackName: "Track",
                         averageUserRating: 2.5, genres: ["Foo", "Bar"])
        ])
    }
    
    
    private func jsonData() -> Data {
    """
    {
    "results": [
    {
    "artistName": "Artist",
    "trackName": "Track",
    "averageUserRating": 2.5,
    "genres": [
    "Foo",
    "Bar"
    ]
    }
    ]
    }
    """
            .data(using: .utf8)!
    }
    
    private func response(statusCode: Int) -> HTTPURLResponse? {
        HTTPURLResponse(url: URL(string: "http://DUMMY")!,
                        statusCode: statusCode, httpVersion: nil, headerFields: nil)
    }
}
