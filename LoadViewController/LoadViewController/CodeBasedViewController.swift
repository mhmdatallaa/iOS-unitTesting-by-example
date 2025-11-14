//
//  CodeBasedViewController.swift
//  LoadViewController
//
//  Created by Mohamed Atallah on 16/10/2025.
//

import UIKit


final class CodeBasedViewController: UIViewController {
    
    let data: String
    
    init(data: String) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        print("Loaded")
    }
}


