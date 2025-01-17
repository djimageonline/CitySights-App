//
//  ContentView.swift
//  CitySights App
//
//  Created by Johnny Proano on 10/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var businesses = [Business]()
    @State var query: String = ""
    var service = DataService()
    
    var body: some View {
        VStack {
            HStack {
                TextField("What are you looking for?", text: $query)
                    .textFieldStyle(.roundedBorder)
                Button {
                } label: {
                    Text("Go")
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
                List (businesses) {b in
                    Text(b.name ?? "Nil")
                }
            }
            .padding()
            .task {
                businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
