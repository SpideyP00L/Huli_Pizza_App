//
//  MenuItemView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named : "0_lg") {
                Image(uiImage: image)
                    .cornerRadius(10)
                    .shadow(color: .teal,  radius: 5, x : 8, y : 8)
            } else {
                Image("surfboard_lg")
            }
            
            VStack (alignment: .leading) {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.thickMaterial)
                    .padding(.leading)
                    .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
                
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra mi nec odio ornare, nec ornare dui tristique. Vestibulum volutpat vestibulum est, ac aliquam quam euismod sit amet. Nam auctor, purus sit amet porttitor convallis, diam augue sodales velit, sit amet tempus neque odio in elit. Morbi at est elit.")
                        .font(.custom("Georgia", size: 18, relativeTo: .title))
                }
            }
            
                
        }
    }
}

#Preview {
    MenuItemView()
}
