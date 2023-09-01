//
//  ContentView.swift
//  nfo-gen
//
//  Created by johyukjun on 2023/09/01.
//

import SwiftUI

struct ContentView: View {
    @State var test: String = ""
    
    @State private var tableData = [TestData(t1: "a",
                                            t2: "b",
                                            t3: "c"),
                                   TestData(t1: "d",
                                            t2: "e",
                                            t3: "f")]
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("nfo-gen")
            
            TextField("input str", text: $test)
                .padding()
                .background(.thinMaterial)
            
            Text("TEST \(test)")
        }
        .padding()
        
        Table(tableData) {
            TableColumn("t1") {
                Text($0.t1)
            }
            TableColumn("t2") {
                Text($0.t2)
            }
            TableColumn("t3") {
                Text($0.t3 ?? "")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
