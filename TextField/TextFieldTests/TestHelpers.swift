//
//  TestHelpers.swift
//  TextFieldTests
//
//  Created by Mohamed Atallah on 02/11/2025.
//

import UIKit


func executeRunLoop() {
    RunLoop.current.run(until: Date())
}

func shouldChangeCharacters(in textField: UITextField,
                            range: [NSValue] = [NSValue()],
                            replacement: String) -> Bool? {
    textField.delegate?.textField?(textField, shouldChangeCharactersInRanges: range, replacementString: replacement)
}

@discardableResult
func shouldReturn(in textField: UITextField) -> Bool? {
    textField.delegate?.textFieldShouldReturn?(textField)
}

func putInViewHierarchy(_ vc: UIViewController) {
    // Get the first connected window scene
    guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
        print("No active window scene found.")
        return
    }

    // Create a window associated with that scene
    let window = UIWindow(windowScene: windowScene)
    window.addSubview(vc.view)
}

extension UITextContentType: @retroactive CustomStringConvertible {
    public var description: String { rawValue }
}

extension UITextAutocorrectionType: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .default: "default"
        case .no: "no"
        case .yes: "yes"
        @unknown default:
            fatalError("Unknown case")
        }
    }
}

extension UIReturnKeyType: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .default:
            "default"
        case .go:
            "go"
        case .google:
            "google"
        case .join:
            "join"
        case .next:
            "next"
        case .route:
            "route"
        case .done:
            "done"
        case .send:
            "send"
        case .search:
            "search"
        case .yahoo:
            "yahoo"
        case .emergencyCall:
            "emergencyCall"
        case .continue:
            "contiue"
        @unknown default:
            fatalError("Unknown case")
        }
    }
}
