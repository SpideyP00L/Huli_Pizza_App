//
//  HeaderView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            
            Text("Huli Pizza Company")
                .font(.custom("Georgia", size: 30, relativeTo: .title))
                .foregroundColor(Color("Sky"))
        }
    }
}


#Preview {
    HeaderView()
}
