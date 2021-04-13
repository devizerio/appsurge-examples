//
//  ViewController.swift
//  05 Tags/UIKit
//
//  Created by Jochen Bernard on 12/04/2021.
//

import UIKit
import AppSurge

class ViewController: UIViewController {
    @IBOutlet weak var toggle: UISwitch!

    @IBAction func onToggle(_ sender: Any) {
        if (toggle.isOn) {
            AppSurge.addTag("opted_in_for_experimental_features")
        } else {
            AppSurge.removeTag("opted_in_for_experimental_features")
        }
    }
}
