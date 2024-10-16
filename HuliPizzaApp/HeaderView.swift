//
//  HeaderView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var orders: OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        VStack {
            
            if vSizeClass ?? .regular != .compact {
                ZStack (alignment: .bottomTrailing) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                }
            } else {
                HStack(alignment: .bottom) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(Color("Surf "))
                        .fontWeight(.heavy)
                }
            }
        }
        .background(.ultraThinMaterial)
    }
}


#Preview {
    HeaderView()
        .environmentObject(OrderModel())
}
