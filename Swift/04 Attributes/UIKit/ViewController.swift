//
//  ViewController.swift
//  04 Attributes/UIKit
//
//  Created by Jochen Bernard on 12/04/2021.
//

import UIKit
import AppSurge

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var removePizzaButton: UIButton!
    
    var pizzaCount = 0
    
    func update(updateAttribute: Bool = true) {
        removePizzaButton.isEnabled = pizzaCount != 0
        countLabel.text = String(pizzaCount)

        if (updateAttribute) {
            AppSurge.setAttribute("pizzaCount", pizzaCount)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(updateAttribute: false)
    }
    
    @IBAction func addPizza(_ sender: Any) {
        pizzaCount += 1
        update()
    }
    
    @IBAction func removePizza(_ sender: Any) {
        pizzaCount -= 1
        update()
    }
}
