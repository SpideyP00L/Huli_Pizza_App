//
//  MenuItemView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct MenuItemView: View {
    
    @State private var addedItem: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                
                if let image = UIImage(named : "0x_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .cornerRadius(15)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal,  radius: 5, x : 8, y : 8)
            
            VStack (alignment: .leading) {
                
                
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra mi nec odio ornare, nec ornare dui tristique. Vestibulum volutpat vestibulum est, ac aliquam quam euismod sit amet. Nam auctor, purus sit amet porttitor convallis, diam augue sodales velit, sit amet tempus neque odio in elit. Morbi at est elit.")
                        .font(.custom("Georgia", size: 18, relativeTo: .title))
                }
            }
            
            Button {
                addedItem = true
            } label: {
                Spacer()
                
                Text(12.99, format: .currency(code: "CAD"))
                    .bold()
                
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                
                Spacer()
            }
            .padding()
            .background(.red, in: Capsule())
            .foregroundStyle(.white)
            .padding(5)
        }
    }
}

#Preview {
    MenuItemView()
}
