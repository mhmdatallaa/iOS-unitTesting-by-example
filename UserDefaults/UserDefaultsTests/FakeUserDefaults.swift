//
//  FakeUserDefaults.swift
//  UserDefaultsTests
//
//  Created by Mohamed Atallah on 25/10/2025.
//

import Foundation
@testable import UserDefaults

class FakeUserDefaults: UserDefaultsProtocol {
    
    var integers: [String: Int] = [:]
    
    func set(_ value: Int, forKey defaultName: String) {
        integers[defaultName] = value
    }
    
    func integer(forKey defaultName: String) -> Int {
        integers[defaultName] ?? 0
    }
}
