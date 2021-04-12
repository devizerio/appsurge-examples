//
//  ContentView.swift
//  02 Banner/SwiftUI
//
//  Created by Jochen Bernard on 12/04/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var surge: ASObservableObject
    
    var body: some View {
        if (surge.get(.showBanner)) {
            Text(surge.get(.bannerText))
                .onTapGesture(perform: {
                    guard let url = URL(string: surge.get(.bannerURL)) else {
                        return
                    }
                    
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
