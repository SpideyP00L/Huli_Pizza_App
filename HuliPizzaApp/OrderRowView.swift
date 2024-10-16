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
        VStack {
            HStack {
                Text("Your Order Item \(order): ")
                
                Spacer()
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text(1, format: .number)
                
                Text(19.99, format: .currency(code: "CAD"))
                
                Spacer()
                
                Text(19.99, format: .currency(code: "CAD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
