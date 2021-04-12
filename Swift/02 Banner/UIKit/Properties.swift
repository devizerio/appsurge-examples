//
//  Properties.swift
//  02 Banner/UIKit
//
//  Created by Jochen Bernard on 09/04/2021.
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

import AppSurge

extension AppSurge.StringProperty {
    static let bannerText = Self(["banner", "text"], "")
    static let bannerURL = Self(["banner", "url"], "")
}

extension AppSurge.BooleanProperty {
    static let showBanner = Self(["banner", "show"], false)
}
