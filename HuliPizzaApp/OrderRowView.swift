//
//  OrderRowView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct OrderRowView: View {
    
    @Binding var order: OrderItem
    
    var body: some View {
        VStack {
            HStack {
                Text(order.item.name)
                
                Spacer()
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text(order.quantity, format: .number)
                
                Text(order.item.price, format: .currency(code: "CAD"))
                
                Spacer()
                
                Text(order.extPrice, format: .currency(code: "CAD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order: .constant(testOrderItem))
}
