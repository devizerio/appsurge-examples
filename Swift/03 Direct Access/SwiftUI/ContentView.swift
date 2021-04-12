//
//  ContentView.swift
//  03 Direct Access/SwiftUI
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

import SwiftUI
import AppSurge

struct ContentView: View {
    @EnvironmentObject var surge: ASObservableObject
    
    var body: some View {
        if (surge.config["banner"]?["show"]?.boolean ?? false) {
            Text(surge.config["banner"]?["text"]?.string ?? "")
                .onTapGesture(perform: {
                    guard
                        let url = URL(string: surge.config["banner"]?["url"]?.string ?? "")
                    else { return }
                    
                    UIApplication.shared.open(url)
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
