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
                        
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
//                To do
            } label: {
                Text("Go")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .onAppear(perform: {
            print(Bundle.main.infoDictionary?["API_KEY"] as? String)
        })
    }
}

#Preview {
    ContentView()
}
