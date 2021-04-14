//
//  ViewController.swift
//  03 Direct Access/UIKit
//
//  Created by Jochen Bernard on 12/04/2021.
//

//
//  {
//      "banner": {
//          "show": true,
//          "text": "Hello, world!",
//          "url": "https://www.example.com"
//      }
//  }
//

import UIKit
import AppSurge

class ViewController: UIViewController {
    @IBOutlet weak var bannerLabel: UILabel!

    @IBAction func openURL(_ sender: Any) {
        guard
            let url = URL(string: AppSurge.config["banner"]?["url"]?.string ?? "")
        else { return }
        
        UIApplication.shared.open(url)
    }

    @objc func update() {
        DispatchQueue.main.async {
            bannerLabel.text = AppSurge.config["banner"]?["text"]?.string ?? ""
            bannerLabel.isHidden = !AppSurge.config["banner"]?["show"]?.boolean ?? false
        }
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
