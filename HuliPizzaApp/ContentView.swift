//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    
    var orders : [Int] = [1, 2, 3, 4, 6]
    
    var showOrders : Bool = false
    
    var body: some View {
        VStack {
            
            HeaderView()
            
            if showOrders {
                OrderView(orders: orders) 
            } else {
                MenuItemView()
                
                MenuView()
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
