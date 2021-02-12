//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Steven Zhang on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    @State private var feeling: String = ""
    
    private var greeting: String {
        return "Hello, \(name), you are \(feeling)"
    }
    
    var body: some View {
       
        Form {
            TextField("Enter yur name.", text: $name)
            
            Picker("Mood", selection: $feeling) {
                Text("😀").tag("Happy")
                Text("🙂").tag("Fine")
                Text("😭").tag("Sad")
            }
            .pickerStyle(SegmentedPickerStyle())
            Text(greeting)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
