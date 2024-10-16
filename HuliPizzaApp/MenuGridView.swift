//
//  MenuGridView.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-16.
//

import SwiftUI

struct MenuGridView: View {
    
    @State private var favorites: [Int] = [-1]
    
    func menu(id: Int) -> MenuItem {
        menu.first(where: { $0.id == id }) ?? noMenuItem
    }
    
    var menu: [MenuItem]
    
    @Binding var selectedItem: MenuItem
    
    let columnLayout = Array(repeating: GridItem(), count: 3)
    let columnLayout2 = Array(repeating: GridItem(), count: 5)
    
    @Namespace private var nspace
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columnLayout2) {
                ForEach(favorites.sorted(), id: \.self) { item in
                    FavoriteTileView(menuItem: menu(id: item))
                        .matchedGeometryEffect(id: item, in: nspace)
                        
                        .onTapGesture {
                            selectedItem = menu(id: item)
                        }
                    
                        .onLongPressGesture {
                            if let index = favorites.firstIndex(where: {$0 == item}) {
                                favorites.remove(at: index)
                            }
                        }
                }
            }
            
            //Text(selectedItem.name)
            
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) { item in
                        if !favorites.contains(item.id) {
                            MenuItemTileView(menuItem: item)
                                .matchedGeometryEffect(id: item.id, in: nspace)
                                .animation(.easeOut, value: favorites)
                                .onTapGesture(count: 2) {
                                    if !favorites.contains(item.id) {
                                        withAnimation(.easeInOut) {
                                            favorites.append(item.id)
                                        }
                                    }
                                }
                                .onTapGesture {
                                    selectedItem = item
                                }
                                .onLongPressGesture {
                                    selectedItem = noMenuItem
                                }
                        }
                    }
                }
            }
        }
        .animation(.easeOut(duration: 0.5), value: favorites)
        .padding()
    }
}

#Preview {
    MenuGridView(menu: MenuModel().menu, selectedItem: .constant(testMenuItem))
}
