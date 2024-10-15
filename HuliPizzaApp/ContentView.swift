//
//  ContentView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                
                Text("Huli Pizza Company")
                    .background()
            }
            
            Text("Order Pizza")
                .font(.title)
            
            HStack (alignment: .firstTextBaseline) {
                Text("Your Order Item : ")
                
                Spacer()
                
                Text("$ 0.00")
            }
            
            HStack (alignment: .top, spacing: 15) {
                Image("0_sm")
                
                Text("Margherita")
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
