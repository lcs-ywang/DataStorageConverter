//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Russell Gordon on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State private var fromUnit: DataStorageUnit = .bit
    @State private var input: String = ""

    // MARK: Computed properties
    private var output: String {
        return "You typed in \(input) and selected \(fromUnit)"
    }
    
    var body: some View {
        
        Form {
            Picker("From unit:", selection: $fromUnit) {
                Text(DataStorageUnit.bit.rawValue).tag(DataStorageUnit.bit)
                Text(DataStorageUnit.nibble.rawValue).tag(DataStorageUnit.nibble)
                Text(DataStorageUnit.byte.rawValue).tag(DataStorageUnit.byte)
                Text(DataStorageUnit.kilobyte.rawValue).tag(DataStorageUnit.kilobyte)
                Text(DataStorageUnit.megabyte.rawValue).tag(DataStorageUnit.megabyte)
                Text(DataStorageUnit.gigabyte.rawValue).tag(DataStorageUnit.gigabyte)
            }
            .pickerStyle(SegmentedPickerStyle())

            TextField("e.g.: 1024", text: $input)
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
