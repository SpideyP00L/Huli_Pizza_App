//
//  OrderItemView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-16.
//

import SwiftUI

struct OrderItemView: View {
    
    @Binding var orderItem: OrderItem
    
    @State var pizzaCrust: PizzaCrust
    
    @State private var quantity = 1
    @State private var doubleIngredient = false
    @State private var name: String = ""
    @State private var comments: String = ""
    
    init(orderItem: Binding<OrderItem>) {
        self._orderItem = orderItem
        self.pizzaCrust = orderItem.item.crust.wrappedValue
    }
    
    var body: some View {
        VStack {
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredient" + (doubleIngredient ? " Yes" : " No"))
            }
            
            Stepper(value: $quantity, in: 1...10) {
                Text("Quantity: \(quantity)" + (quantity == 1 ? " Pizza" : " Pizzas"))
            }
            
            Picker(selection: $pizzaCrust) {
                ForEach(PizzaCrust.allCases, id: \.self) { crust in
                    Text(crust.rawValue).tag(crust)
                }
            } label: {
                Text("Pizza Crust")
            }
            
            VStack {
                Text("Comments")
                    .font(.subheadline)
                
                TextEditor(text: $comments)
            }
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .shadow(radius: 1)
            
            Spacer()
        }
        .padding()
    }
    
}

#Preview {
    OrderItemView(orderItem: .constant(testOrderItem))
}
