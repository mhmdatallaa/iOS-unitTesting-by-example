//
//  ViewController.swift
//  TextField
//
//  Created by Mohamed Atallah on 02/11/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var username: UITextField!
    @IBOutlet private(set) var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    deinit {
        print("ViewController.deinit")
    }


    private func performLogin(userName: String, password: String) {
        print("Username: \(userName)")
        print("Password: \(password)")
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersInRanges ranges: [NSValue], replacementString string: String) -> Bool {
        if textField === username {
            return !string.contains(" ")
        }else {
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === username {
            passwordField.becomeFirstResponder()
        } else {
            guard let userName = username.text,
                  let password = passwordField.text else {
                      return false
                  }
            passwordField.resignFirstResponder()
            performLogin(userName: userName, password: password)
        }
        
        return false
    }
}
