//
//  TestHelpers.swift
//  NavigationTests
//
//  Created by Mohamed Atallah on 22/10/2025.
//

import UIKit


func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func executeRunLoop() {
    RunLoop.current.run(until: Date())
}
