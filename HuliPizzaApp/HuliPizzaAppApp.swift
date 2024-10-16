//
//  HuliPizzaAppApp.swift
//  HuliPizzaApp
//
//  Created by Jeet Panchal on 2024-10-15.
//

import SwiftUI

@main
struct HuliPizzaAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu: MenuModel().menu)
        }
    }
}
