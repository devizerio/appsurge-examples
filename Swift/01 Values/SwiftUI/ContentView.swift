//
//  ContentView.swift
//  01 Values/SwiftUI
//
//  Created by Jochen Bernard on 12/04/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var surge: ASObservableObject
    
    var body: some View {
        let string = surge.get(.myString)
        let number = surge.get(.myNumber)
        let boolean = surge.get(.myBoolean)

        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
