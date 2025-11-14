//
//  ViewController.swift
//  ButtonTap
//
//  Created by Mohamed Atallah on 20/10/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction private func buttonTapped() {
        print(">> Button tapped")
    }
}

