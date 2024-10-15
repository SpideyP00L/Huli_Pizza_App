//
//  RatingsView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct RatingsView: View {
    
    var rating : Int
    
    var body: some View {
        
        HStack {
            ForEach (1...6, id: \.self) { circle in
                Image(systemName: (circle <= rating) ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 4)
}
