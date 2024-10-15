//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Huli Pizza Company")
            
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            
            Text("Order Pizza")
                .font(.title)
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
