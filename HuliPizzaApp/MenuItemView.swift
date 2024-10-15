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
            } else {
                Image("surfboard_lg")
            }
            
            Text("Margherita")
            
            Text("Description")
                
        }
    }
}

#Preview {
    MenuItemView()
}
