//
//  OrderView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct OrderView: View {
    
    @ObservedObject var orders: OrderModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ScrollView {
                    ForEach ($orders.orderItems)  { order in
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
                }
                .padding()
                .background(.ultraThinMaterial)
                
            }
            .padding()
            
            Button("Delete Order") {
                if !orders.orderItems.isEmpty {
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
    OrderView(orders: OrderModel())
}
