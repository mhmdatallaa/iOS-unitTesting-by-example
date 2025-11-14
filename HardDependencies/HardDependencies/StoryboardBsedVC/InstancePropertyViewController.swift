//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import UIKit

class InstancePropertyViewController: UIViewController {
    
    lazy var analytics: Analytics = Analytics.shared

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }
    
}
