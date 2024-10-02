//
//  ContentView.swift
//  CitySights App
//
//  Created by Johnny Proano on 10/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    
    var body: some View {
        HStack {
            
            Text("Nice")
            Text("Nice")
            
            Text("Nice")
            
            Text("Nice")
            
            
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
//                To do
            } label: {
                Text("Go")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
