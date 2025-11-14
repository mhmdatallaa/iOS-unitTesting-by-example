//
//  TestHelpers.swift
//  ButtonTapTests
//
//  Created by Mohamed Atallah on 20/10/2025.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}


func tap(_ button: UIBarButtonItem) {
    _ = button.target?.perform(button.action, with: nil)
}
