//
//  Analytics.swift
//  HardDependencies
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import Foundation

// API we can't control
class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        if self !== Analytics.shared {
            print(">> ...Not the Analytics Singleton")
        }
    }
}
