//
//  ButtonTapTests.swift
//  ButtonTapTests
//
//  Created by Mohamed Atallah on 20/10/2025.
//

import XCTest
@testable import ButtonTap

final class ViewControllerTests: XCTestCase {

    func test_ButtonTap() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyBoard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        
        tap(sut.button)
    }

}
