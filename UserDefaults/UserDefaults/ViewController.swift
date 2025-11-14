//
//  ViewController.swift
//  UserDefaults
//
//  Created by Mohamed Atallah on 25/10/2025.
//

import UIKit

protocol UserDefaultsProtocol {
    func set(_ value: Int, forKey defaultName: String)
    func integer(forKey defaultName: String) -> Int
}

class ViewController: UIViewController {
    @IBOutlet private(set) var label: UILabel!
    @IBOutlet private(set) var button: UIButton!
    
    var userDefualts: UserDefaultsProtocol = UserDefaults.standard
    
    private var increament: Int = 0 {
        didSet {
            label.text = "\(increament)"
            userDefualts.set(increament, forKey: "count")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        increament = userDefualts.integer(forKey: "count")
    }


    @IBAction private func increamentButtonTapped() {
        increament += 1
    }
    

}


extension UserDefaults: UserDefaultsProtocol {
    
}
