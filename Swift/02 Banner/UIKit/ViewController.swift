//
//  ViewController.swift
//  02 Banner/UIKit
//
//  Created by Jochen Bernard on 12/04/2021.
//

import UIKit
import AppSurge

class ViewController: UIViewController {
    @IBOutlet weak var bannerLabel: UILabel!

    @IBAction func openURL(_ sender: Any) {
        guard let url = URL(string: AppSurge.get(.bannerURL)) else {
            return
        }
                    
        UIApplication.shared.open(url)
    }

    @objc func update() {
        bannerLabel.text = AppSurge.get(.bannerText)
        bannerLabel.isHidden = !AppSurge.get(.showBanner)
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
