//
//  SomeTextInputView.swift
//  ExampleProject
//
//  Created by Darya Rednikina on 02.05.2023.
//

import SwiftUI

struct SomeTextInputView: View {
    
    @Binding var textInput: String
    
    var body: some View {
        VStack {
            TextField("Your input", text: $textInput)
        }.padding()
    }
}
