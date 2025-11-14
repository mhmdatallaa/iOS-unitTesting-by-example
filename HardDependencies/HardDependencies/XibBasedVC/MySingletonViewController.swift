//
//  MySingletonViewController.swift
//  HardDependencies
//
//  Created by Mohamed Atallah on 18/10/2025.
//

import UIKit

class MySingletonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    MysingletonAnalytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }

}
