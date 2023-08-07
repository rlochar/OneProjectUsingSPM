//
//  SwiftUIView.swift
//  
//
//  Created by Roar Lochar on 25/07/2023.
//

import SwiftUI

public struct UILibraryView: View {
    let message: String
    
    public var body: some View {
        VStack {
            Text("Hello, World – from MyUILibrary!")
            Button("I am a button, click me!", action: {
                print(message)
            })
        }
    }
    
    public init(message: String = "Hello, World") {
        self.message = message
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UILibraryView()
    }
}
