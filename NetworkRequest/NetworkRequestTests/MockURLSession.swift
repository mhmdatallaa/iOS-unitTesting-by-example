//
//  MockURLSession.swift
//  NetworkRequestTests
//
//  Created by Mohamed Atallah on 26/10/2025.
//

import XCTest
@testable import NetworkRequest

class MockURLSession: URLSessionProtocol {
    var dataTaskCallCount = 0
    var dataTaskArgsRequest: [URLRequest] = []
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, (any Error)?) -> Void) -> URLSessionDataTask {
        dataTaskCallCount += 1
        dataTaskArgsRequest.append(request)
        
        return DummyURLSessionDataTask()
    }
    
    func verifyDataTask(with request: URLRequest, file: StaticString = #file, line: UInt = #line) {
        guard dataTaskWasCalledOnce(file: file, line: line) else { return }
        XCTAssertEqual(dataTaskArgsRequest.first, request, "request",
        file: file, line: line)
    }
    
    private func dataTaskWasCalledOnce(
    file: StaticString = #file, line: UInt = #line) -> Bool {
    verifyMethodCalledOnce(
    methodName: "dataTask(with:completionHandler:)",
    callCount: dataTaskCallCount,
    describeArguments: "request: \(dataTaskArgsRequest)",
    file: file,
    line: line)
    }
}

private class DummyURLSessionDataTask: URLSessionDataTask, @unchecked Sendable {
    override func resume() {
    }
}
