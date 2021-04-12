//
//  MyApp.swift
//  03 Direct Access/SwiftUI
//
//  Created by Jochen Bernard on 12/04/2021.
//

import SwiftUI
import AppSurge

@main
struct MyApp: App {
    @StateObject var surge = ASObservableObject()
    
    func initializeAppSurge() {
        AppSurge.initialize(clientKey: "my-client-key")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(surge)
                .onAppear(perform: initializeAppSurge)
        }
    }
}
