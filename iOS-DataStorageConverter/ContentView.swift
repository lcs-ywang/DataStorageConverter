//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Yining Wang on 2021-02-12.
//





import SwiftUI

struct ContentView: View {
    
    private var name: String = "Luck"
    
    private var greating: String{
        return "Hello.\(name)"
    }
    
    var body: some View {
        Text(greating)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
