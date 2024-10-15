//
//  MenuRowView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct MenuRowView: View {
    
    var item: Int
    
    var body: some View {
        HStack (alignment: .top, spacing: 15) {
            if let image = UIImage(named : "\(item)_sm") {
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -20)
                    .padding(.leading, -15)
            } else {
                Image("surfboard_sm")
            }
            
            VStack(alignment: .leading) {
                Text("Margherita")
                
                RatingsView(rating: 4)
                
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    MenuRowView(item: 2)
}
