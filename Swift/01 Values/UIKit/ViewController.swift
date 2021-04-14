//
//  ViewController.swift
//  01 Values/UIKit
//
//  Created by Jochen Bernard on 12/04/2021.
//

import UIKit
import AppSurge

class ViewController: UIViewController {
    @IBOutlet weak var myStringLabel: UILabel!
    @IBOutlet weak var myNumberLabel: UILabel!
    @IBOutlet weak var myBooleanLabel: UILabel!

    @objc func update() {
        myStringLabel.text = AppSurge.get(.myString)
        myNumberLabel.text = AppSurge.get(.myNumber)
        myBooleanLabel.text = AppSurge.get(.myBoolean)
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
