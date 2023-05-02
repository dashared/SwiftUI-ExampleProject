//
//  ContentView.swift
//  ExampleProject
//
//  Created by Darya Rednikina on 02.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var textInput = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Your input from previous view: \(textInput)")
                NavigationLink("Tap me", destination: { SomeTextInputView(textInput: $textInput) })
            }
        }
        .padding()
    }
}
