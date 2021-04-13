//
//  ContentView.swift
//  05 Tags/SwiftUI
//
//  Created by Jochen Bernard on 12/04/2021.
//

import SwiftUI
import AppSurge

struct ContentView: View {
    @State var experimentalFeatures = false
    
    func updateTag() {
        if (experimentalFeatures) {
            AppSurge.addTag("opted_in_for_experimental_features")
        } else {
            AppSurge.removeTag("opted_in_for_experimental_features")
        }
    }
    
    var body: some View {
        let efBinding = Binding<Bool>(
            get: { experimentalFeatures },
            set: {
                experimentalFeatures = $0
                updateTag()
            }
        )

        Toggle("Experimental Features", isOn: efBinding)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
