//
//  SomeTextInputView.swift
//  ExampleProject
//
//  Created by Darya Rednikina on 02.05.2023.
//

import SwiftUI

struct SomeTextInputView: View {
    
    @Binding var textInputDict: [String: String]
    
    var date: String
    
    @State var textInput: String
    
    var body: some View {
        VStack {
            TextField("Your input", text: $textInput).onChange(of: textInput) { newValue in
                self.textInputDict[date] = newValue
            }
        }.padding()
    }
}
