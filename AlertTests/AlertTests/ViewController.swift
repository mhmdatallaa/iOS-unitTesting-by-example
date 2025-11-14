//
//  ViewController.swift
//  AlertTests
//
//  Created by Mohamed Atallah on 21/10/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction private func didTapButton() {
        let alert = UIAlertController(title: "Alert", message: "some alert message", preferredStyle: .alert)
        let oKActoin = UIAlertAction(title: "OK", style: .default) { _ in
            print(">>>>>> OK")
        }
        let cancleAction = UIAlertAction(title: "Cancle", style: .cancel) { _ in
            print(">>>>>> Cancle")
        }
        
        alert.addAction(oKActoin)
        alert.addAction(cancleAction)
        alert.preferredAction = oKActoin
        present(alert, animated: true)
    }
}

