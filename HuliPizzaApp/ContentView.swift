//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [Int] = [1, 2, 3, 4, 6]
    
    var body: some View {
        VStack {
            ZStack {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                
                Text("Huli Pizza Company")
                    .background()
            }
            
            Image(systemName : orders.isEmpty ? "cart" : "cart.circle.fill")
            
            HStack {
                Text("Order Pizza")
                    .font(.title)
                
                Spacer()
            }
            
            ScrollView {
                ForEach (orders, id: \.self)  { order in
                    HStack (alignment: .firstTextBaseline) {
                        Text("Your Order Item \(order): ")
                        
                        Spacer()
                        
                        Text(19.99, format: .currency(code: "USD"))
                    }
                }
            }
            
            ScrollView {
                ForEach (1...25, id: \.self) { item in
                    HStack (alignment: .top, spacing: 15) {
                        Image(systemName: "\(item).circle.fill")
                            .font(.largeTitle)
                        
                        VStack(alignment: .leading) {
                            Text("Margherita")
                            
                            Text("Description")
                            
                        }
                    }
                }
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
