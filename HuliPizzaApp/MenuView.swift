//
//  MenuView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct MenuView: View {
    
    var menu: [MenuItem]
    
    var body: some View {
        ScrollView {
            ForEach (menu) { item in
                MenuRowView(item: item) 
            }
        }
    }
}

#Preview {
    MenuView(menu: MenuModel().menu)
}
