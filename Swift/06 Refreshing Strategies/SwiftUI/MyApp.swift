//
//  MyApp.swift
//  06 Refreshing Strategies/SwiftUI
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
        AppSurge.refreshingStrategies = [
            .onReturnFromBackground,
            .onInterval(3600.0)
        ]
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(surge)
                .onAppear(perform: initializeAppSurge)
        }
    }
}
