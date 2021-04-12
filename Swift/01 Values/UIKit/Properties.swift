//
//  Properties.swift
//  01 Values/UIKit
//
//  Created by Jochen Bernard on 09/04/2021.
//

//
//  {
//      "myString": "Hello, World!",
//      "myNumber": 8,
//      "myBoolean": true
//  }
//

import AppSurge

extension ASProperty.ASString {
    static let myString = ASProperty.ASString("myString", "")
}

extension ASProperty.ASNumber {
    static let myNumber = ASProperty.ASNumber("myNumber", 0)
}

extension ASProperty.ASBoolean {
    static let myBoolean = ASProperty.ASBoolean("myBoolean", false)
}
