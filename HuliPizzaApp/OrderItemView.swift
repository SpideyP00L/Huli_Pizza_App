//
//  OrderItemView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-16.
//

import SwiftUI

struct OrderItemView: View {
    
    @Binding var orderItem: OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredient" + (doubleIngredient ? "Yes" : "No"))
                
                Stepper(value: $quantity, in: 1...10) {
                    Text("Quantity: \(quantity)" + (quantity == 1 ? " Pizza" : " Pizzas"))
                }
            }
        }
        .padding()
    }
}

#Preview {
    OrderItemView(orderItem: .constant(testOrderItem))
}
