//
//  ContentView.swift
//  04 Attributes/SwiftUI
//
//  Created by Jochen Bernard on 12/04/2021.
//

import SwiftUI
import AppSurge

struct ContentView: View {
    @State var pizzaCount = 0
    
    func updateAttribute() {
        AppSurge.setAttribute("pizzaCount", pizzaCount)
    }
    
    func addPizza() {
        pizzaCount += 1
        updateAttribute()
    }
    
    func removePizza() {
        pizzaCount -= 1
        updateAttribute()
    }
    
    var body: some View {
        HStack {
            Button("+", action: addPizza)
            
            Text(String(pizzaCount))
                .frame(width: 64.0, height: 64.0)
            
            Button("-", action: removePizza)
                .disabled(pizzaCount == 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
