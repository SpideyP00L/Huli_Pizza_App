//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    
    var orders : [Int] = [1, 2, 3, 4, 6]
    
    var body: some View {
        VStack {
            
            HeaderView()
            
            OrderView(orders: orders)
            
            MenuItemView()
            
            MenuView()
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
