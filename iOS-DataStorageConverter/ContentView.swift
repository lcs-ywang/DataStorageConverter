//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Yining Wang on 2021-02-12.
//





import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    
    private var greating: String{
        return "Hello.\(name)"
    }
    
    var body: some View {
        
        VStack{
            
            TextField("Enter your name", text:$name)
            
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
