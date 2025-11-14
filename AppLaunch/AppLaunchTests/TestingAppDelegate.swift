//
//  File.swift
//  AppLaunchTests
//
//  Created by Mohamed Atallah on 14/10/2025.
//

import UIKit

@objc(TestingAppDelegate) // exposing it to objc-c => call it without namespace.
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print("<< Launching with testing app delegate")
        
        return true
    }


}
