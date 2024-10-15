//
//  OrderRowView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct OrderRowView: View {
    
    var order: Int
    
    var body: some View {
        HStack (alignment: .firstTextBaseline) {
            Text("Your Order Item \(order): ")
            
            Spacer()
            
            Text(19.99, format: .currency(code: "USD"))
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
