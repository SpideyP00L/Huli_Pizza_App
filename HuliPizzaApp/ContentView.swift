//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    
    var orders : [Int] = [1, 2, 3, 4, 6]
    
    var showOrders : Bool = true
    
    var body: some View {
        VStack {
            
            HeaderView()
                .shadow(radius: 5)
            
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(10)
            } else {
                MenuItemView()
                    .padding()
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                
                MenuView()
            }
            
            Spacer()
            
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}
