//
//  StatusBarView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-16.
//

import SwiftUI

struct StatusBarView: View {
    
    @Binding var showOrders: Bool
    @EnvironmentObject var orders: OrderModel
    
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) orders")
            
            Spacer()
            
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
            }
            
            Spacer()
            
            Label {
                Text(orders.orderTotal, format: .currency(code: "CAD"))
            } icon: {
                Image(systemName : orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
            }
            
        }
        .foregroundColor(.white)
        .font(.title2)
    }
}

#Preview {
    StatusBarView(showOrders: .constant(false))
        .environmentObject(OrderModel())
}
