//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Yining Wang on 2021-02-12.
//





import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    
    @State private var feeling: String = ""
    
    private var greating: String{
        return "Hello.\(name), you are \(feeling)"
    }
    
    var body: some View {
        
        Form{
            
            TextField("Enter your name", text:$name)
            
            Picker("Mood", selection: $feeling){
                Text("😃").tag("Happy")
                Text("🙂").tag("Fine")
                Text("😭").tag("Sad")
            }
            
            .pickerStyle(SegmentedPickerStyle())
            
            Text(greating)
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
