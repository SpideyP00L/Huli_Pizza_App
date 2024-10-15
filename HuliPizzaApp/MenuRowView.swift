//
//  MenuRowView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

struct MenuRowView: View {
    
    var item: Int = 2
    
    var body: some View {
        HStack (alignment: .top, spacing: 15) {
            if let image = UIImage(named : "\(item)_sm") {
                Image(uiImage: image)
            } else {
                Image("surfboard_sm")
            }
            
            VStack(alignment: .leading) {
                Text("Margherita")
                
                Text("Description")
                
            }
        }
    }
}

#Preview {
    MenuRowView()
}
