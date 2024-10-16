//
//  OrderView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct OrderView: View {
    
    var orders: [Int]
    
    var body: some View {
        VStack {
            
            Label {
                Text(59.99, format: .currency(code: "USD"))
            } icon: {
                Image(systemName : orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            
            HStack {
                
                Text("Order Pizza")
                    .font(.title)
                
                Spacer()
            }
            
            ScrollView {
                ForEach (orders, id: \.self)  { order in
                    OrderRowView(order: order)
                        .padding(.bottom, 5)
                        .padding(.horizontal)
                }
            }
            
        }
        .padding()
        .background(Color("Surf"))
    }
}


#Preview {
    OrderView(orders: [1, 2, 3, 4, 6])
}
