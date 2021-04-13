//
//  AppDelegate.swift
//  05 Tags/UIKit
//
//  Created by Jochen Bernard on 12/04/2021.
//

import UIKit
import AppSurge

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AppSurge.initialize(clientKey: "my-client-key")
        return true
    }
}
