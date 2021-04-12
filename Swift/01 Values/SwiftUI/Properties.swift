//
//  Properties.swift
//  01 Values/SwiftUI
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

extension AppSurge.StringProperty {
    static let myString = Self("myString", "")
}

extension AppSurge.NumberProperty {
    static let myNumber = Self("myNumber", 0)
}

extension AppSurge.BooleanProperty {
    static let myBoolean = Self("myBoolean", false)
}
