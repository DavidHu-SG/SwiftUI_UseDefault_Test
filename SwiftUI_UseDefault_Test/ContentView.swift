//
//  ContentView.swift
//  SwiftUI_UseDefault_Test
//
//  Created by David Hu on 3/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
            Button(action: {
                // Will cause Compiling failed: type of expression is ambiguous without more context
                // Comment this then Canvas will work
                UserDefaults.standard.setValue(true, forKey: "UseDefault_Test")
            }) {
                HStack {
                    Image(systemName: "alarm")
                    Text("Test Button")
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
