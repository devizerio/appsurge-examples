//
//  ViewController.swift
//  01 Values/UIKit
//
//  Created by Jochen Bernard on 12/04/2021.
//

import UIKit
import AppSurge

class ViewController: UIViewController {
    @objc func update() {
        let string = AppSurge.get(.myString)
        let number = AppSurge.get(.myNumber)
        let boolean = AppSurge.get(.myBoolean)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(update),
            name: .ASConfigChanged,
            object: nil
        )
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
