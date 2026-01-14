//
//  ContentView.swift
//  Cars
//
//  Created by student on 14/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house")
            {
                HomeView()
            }
            Tab("favorieten", systemImage: "heart.fill")
            {
                FavoritesView()
            }
            Tab("Instellingen", systemImage: "gear")
            {
                SettingsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
