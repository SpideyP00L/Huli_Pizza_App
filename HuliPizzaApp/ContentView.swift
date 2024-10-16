//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    
    @State var orders : [OrderItem] = testOrders
    
    @State private var showOrders : Bool = true
    
    var body: some View {
        VStack {
            
            HeaderView()
                .shadow(radius: 5)
            
            HStack {
                Text("\(orders.count) orders")
                
                Spacer()
                
                Button {
                    showOrders.toggle()
                } label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                }
            }
            .foregroundColor(.white)
            .font(.title2)
            
            if showOrders {
                OrderView(orders: $orders)
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
