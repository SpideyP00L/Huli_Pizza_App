//
//  OrderView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct OrderView: View {
    
    @Binding var orders: [OrderItem]
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ScrollView {
                    ForEach ($orders)  { order in
                        //Text(order.item.name)
                        OrderRowView(order: order)
                            .padding(4)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                            .padding(.bottom, 5)
                            .padding(.horizontal)
                    }
                }
                .padding(.top, 70)
                
                HStack {
                    
                    Text("Order Pizza")
                        .font(.title)
                    
                    Spacer()
                    
                    Label {
                        Text(59.99, format: .currency(code: "CAD"))
                    } icon: {
                        Image(systemName : orders.isEmpty ? "cart" : "cart.circle.fill")
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
                
            }
            .padding()
            
            Button("Delete Order") {
                if !orders.isEmpty {
                    orders.removeLast()
                }
            }
            .padding()
            .background(.regularMaterial, in: Capsule())
        }
        .background(Color("Surf"))
    }
}


#Preview {
    OrderView(orders: .constant(testOrders))
}
