//
//  HeaderView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            
            Text("Huli Pizza Company")
                .background()
        }
    }
}


#Preview {
    HeaderView()
}
