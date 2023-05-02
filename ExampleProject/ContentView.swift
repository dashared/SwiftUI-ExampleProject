//
//  ContentView.swift
//  ExampleProject
//
//  Created by Darya Rednikina on 02.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var textInputDict: [String: String] = [:]
    
    var dictKey: String = "hello"
    
    var body: some View {
        let textInput = textInputDict[dictKey] ?? ""
        
        return NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Dictionary key: \(dictKey)")
                Text("Your input from previous view: \(textInputDict[dictKey] ?? "")")
                NavigationLink("Tap me", destination: { SomeTextInputView(textInputDict: $textInputDict, date: dictKey, textInput: textInput) })
            }
        }
        .padding()
    }
}
