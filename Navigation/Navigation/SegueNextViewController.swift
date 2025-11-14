//
//  SegueNextViewController.swift
//  Navigation
//
//  Created by Mohamed Atallah on 22/10/2025.
//

import UIKit

class SegueNextViewController: UIViewController {
    var labelText: String?
    
    @IBOutlet private(set) var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = labelText
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    



}
