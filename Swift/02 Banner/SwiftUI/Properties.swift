//
//  Properties.swift
//  02 Banner/SwiftUI
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

extension ASProperty.ASString {
    static let bannerText = ASProperty.ASString(["banner", "text"], "")
    static let bannerURL = ASProperty.ASString(["banner", "url"], "")
}

extension ASProperty.ASBoolean {
    static let showBanner = ASProperty.ASBoolean(["banner", "show"], false)
}
