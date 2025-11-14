//
//  MysingletonAnalytics.swift
//  HardDependencies
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import Foundation

class MysingletonAnalytics {
    private static let instance = MysingletonAnalytics()
#if DEBUG
    static var subbedInstance: MysingletonAnalytics?
#endif
    
    static var shared: MysingletonAnalytics {
        #if DEBUG
        if let subbedInstance {
            return subbedInstance
        }
        #endif
        return instance
    }
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        if self !== MysingletonAnalytics.shared {
            print(">> Not the MySingletonAnalytics singleton!")
        }
    }
}
