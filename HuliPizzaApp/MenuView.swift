//
//  MenuView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach (1...25, id: \.self) { item in
                MenuRowView(item: item) 
            }
        }
    }
}

#Preview {
    MenuView()
}
