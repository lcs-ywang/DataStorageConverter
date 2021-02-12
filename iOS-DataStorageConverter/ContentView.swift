//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Yining Wang on 2021-02-12.
//





import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    
    
    @State private var input: String = ""
    
    
    //MARK: Computer properties
    
    private var output: String{
        return"You typed in \(input)"
    }
 
    
    
    var body: some View {
        
        Form{
            
            TextField("e.g.: 1824", text: $input)
                .keyboardType(.numberPad)
         Text(output)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
