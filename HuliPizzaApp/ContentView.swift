//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    
    var menu: [MenuItem]
    
    @StateObject var orders : OrderModel = OrderModel()
    @State private var showOrders : Bool = true
    @State private var selectedItem: MenuItem = noMenuItem
    
    var body: some View {
        VStack {
            
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light)
            
            StatusBarView(showOrders: $showOrders)
            
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(10)
            } else {
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding()
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
            
            Spacer()
            
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
        .environmentObject(orders)
    }
}

#Preview {
    ContentView(menu: MenuModel().menu)
}
