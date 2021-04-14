//
//  ContentView.swift
//  01 Values/SwiftUI
//
//  Created by Jochen Bernard on 12/04/2021.
//

import SwiftUI
import AppSurge

struct ContentView: View {
    @EnvironmentObject var surge: ASObservableObject
    
    var body: some View {
        VStack {
            Text("myString value is \(surge.get(.myString))")
            
            Text("myNumber value is \(surge.get(.myNumber))")
            
            Text("myBoolean value is \(surge.get(.myBoolean))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
